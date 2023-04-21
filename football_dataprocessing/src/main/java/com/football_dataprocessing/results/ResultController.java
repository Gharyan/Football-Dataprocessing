package com.football_dataprocessing.results;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.football_dataprocessing.XmlValidation;
import com.networknt.schema.JsonSchema;
import com.networknt.schema.JsonSchemaFactory;
import com.networknt.schema.SpecVersion;
import com.networknt.schema.ValidationMessage;
import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.JAXBException;
import jakarta.xml.bind.Unmarshaller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.InputStream;
import java.io.StringReader;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/results")
public class ResultController {
    final ResultService resultService;

    final static Logger log = LogManager.getLogger(ResultController.class);

    public ResultController(ResultService resultService) {
        this.resultService = resultService;
    }

    @GetMapping("")
    public List<Result> listResults() {
        return resultService.listAllResults();
    }

    @GetMapping("/{result_id}")
    public ResponseEntity<Result> get(@PathVariable Integer result_id) {
        try {
            Result user = resultService.getResult(result_id);
            return new ResponseEntity<Result>(user, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<Result>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/xml")
    public Result addResultWithXML(@RequestBody String requestStr) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(Result.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();

        StringReader reader = new StringReader(requestStr);
        Result result = (Result) jaxbUnmarshaller.unmarshal(reader);

        if (!XmlValidation.validateXMLSchema("src/main/resources/models/results.xsd", requestStr)) {
            System.out.println("False");
            return result;
        };

        resultService.saveResult(result);
        return result;
    }

    @PostMapping("/json")
    public Result addResultWithJson(@RequestBody String requestStr) throws JsonProcessingException {
        log.info("Request Json string: {}", requestStr);
        InputStream schemaAsStream = ResultController.class.getClassLoader().getResourceAsStream("models/results_schema.json");
        JsonSchema schema = JsonSchemaFactory.getInstance(SpecVersion.VersionFlag.V7).getSchema(schemaAsStream);

        ObjectMapper om = new ObjectMapper();
        JsonNode jsonNode = om.readTree(requestStr);

        Set<ValidationMessage> errors = schema.validate(jsonNode);
        StringBuilder errorsCombined = new StringBuilder();
        for (ValidationMessage error : errors) {
            log.error("Validation Error: {}", error);
            errorsCombined.append(error.toString()).append("\n");
        }

        if (errors.size() > 0) {
            throw new RuntimeException("Json is not right! " + errorsCombined);
        }

        Result request = om.readValue(requestStr, Result.class);
        log.info("Return this request: {}", request);

        resultService.saveResult(request);
        System.out.println(request);
        return request;
    }

    @PutMapping("/{result_id}")
    public ResponseEntity<?> updateResult(@RequestBody Result result, @PathVariable Integer result_id) {
        try {
            Result existResult = resultService.getResult(result_id);
            result.setResult_id(result_id);
            resultService.saveResult(result);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    @DeleteMapping("/{result_id}")
    public void deleteResult(@PathVariable Integer result_id) {

        resultService.deleteResult(result_id);
    }
}
