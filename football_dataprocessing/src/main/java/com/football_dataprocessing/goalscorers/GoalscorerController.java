package com.football_dataprocessing.goalscorers;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.JacksonXmlModule;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.football_dataprocessing.XmlValidation;
import com.football_dataprocessing.results.ResultRepository;
import com.networknt.schema.JsonSchema;
import com.networknt.schema.JsonSchemaFactory;
import com.networknt.schema.SpecVersion;
import com.networknt.schema.ValidationMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.JAXBException;
import jakarta.xml.bind.Unmarshaller;
import jakarta.xml.bind.util.JAXBSource;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.ContentCachingRequestWrapper;
import org.xml.sax.SAXException;

import javax.xml.XMLConstants;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.awt.geom.GeneralPath;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.stream.Collectors;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/goalscorers")
public class GoalscorerController {
    private final GoalscorerService goalscorerService;

    final static Logger log = LogManager.getLogger(GoalscorerController.class);

    public GoalscorerController(GoalscorerService goalscorerService) {
        this.goalscorerService = goalscorerService;
    }

    @GetMapping("")
    public List<Goalscorer> listGoalscorers() {
        return goalscorerService.listAllGoalscorers();
    }

    @GetMapping("/{goalscorer_id}")
    public ResponseEntity<Goalscorer> get(@PathVariable Integer goalscorer_id) {
        try {
            Goalscorer user = goalscorerService.getGoalscorer(goalscorer_id);
            return new ResponseEntity<>(user, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/xml")
    public Goalscorer addGoalscorerWithXML(@RequestBody String requestStr) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(Goalscorer.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();

        StringReader reader = new StringReader(requestStr);
        Goalscorer goalscorer = (Goalscorer) jaxbUnmarshaller.unmarshal(reader);

            if (!XmlValidation.validateXMLSchema("src/main/resources/models/goalscorers.xsd", requestStr)) {
                System.out.println("False");
                return goalscorer;
            };

            goalscorerService.saveGoalscorer(goalscorer);
            return goalscorer;
    }

    @PostMapping("/json")
    public Goalscorer addGoalscorerWithJson(@RequestBody String requestStr) throws JsonProcessingException {
        log.info("Request Json string: {}", requestStr);
        InputStream schemaAsStream = GoalscorerController.class.getClassLoader().getResourceAsStream("models/goalscorers_schema.json");
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

        Goalscorer request = om.readValue(requestStr, Goalscorer.class);
        log.info("Return this request: {}", request);

        goalscorerService.saveGoalscorer(request);
        System.out.println(request);
        return request;
    }

    @PutMapping("/{goalscorer_id}")
    public ResponseEntity<?> updateGoalscorer(@RequestBody Goalscorer goalscorer, @PathVariable Integer goalscorer_id) {
        try {
            Goalscorer existGoalscorer = goalscorerService.getGoalscorer(goalscorer_id);
            goalscorer.setGoalscorer_id(goalscorer_id);
            goalscorerService.saveGoalscorer(goalscorer);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{goalscorer_id}")
    public void deleteGoalscorer(@PathVariable Integer goalscorer_id) {
        goalscorerService.deleteGoalscorer(goalscorer_id);
    }
}
