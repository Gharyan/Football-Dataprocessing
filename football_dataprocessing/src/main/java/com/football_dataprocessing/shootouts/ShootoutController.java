package com.football_dataprocessing.shootouts;

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
@RequestMapping("/shootouts")
public class ShootoutController {
    final ShootoutService shootoutService;

    final static Logger log = LogManager.getLogger(ShootoutController.class);

    public ShootoutController(ShootoutService shootoutService) {
        this.shootoutService = shootoutService;
    }

    @GetMapping("")
    public List<Shootout> listShootouts() {
        return shootoutService.listAllShootouts();
    }

    @GetMapping("/{shootout_id}")
    public ResponseEntity<Shootout> get(@PathVariable Integer shootoutId) {
        try {
            Shootout user = shootoutService.getShootout(shootoutId);
            return new ResponseEntity<Shootout>(user, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<Shootout>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/xml")
    public Shootout addShootoutWithXML(@RequestBody String requestStr) throws JAXBException {

        JAXBContext jaxbContext = JAXBContext.newInstance(Shootout.class);
        Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();

        StringReader reader = new StringReader(requestStr);
        Shootout shootout = (Shootout) jaxbUnmarshaller.unmarshal(reader);

        if (!XmlValidation.validateXMLSchema("src/main/resources/models/shootouts.xsd", requestStr)) {
            System.out.println("False");
            return shootout;
        };

        shootoutService.saveShootout(shootout);
        return shootout;
    }

    @PostMapping("/json")
    public Shootout addShootoutWithJson(@RequestBody String requestStr) throws JsonProcessingException {
        log.info("Request Json string: {}", requestStr);
        InputStream schemaAsStream = ShootoutController.class.getClassLoader().getResourceAsStream("models/shootouts_schema.json");
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

        Shootout request = om.readValue(requestStr, Shootout.class);
        log.info("Return this request: {}", request);

        shootoutService.saveShootout(request);
        System.out.println(request);
        return request;
    }

    @PutMapping("/{shootout_id}")
    public ResponseEntity<?> updateShootout(@RequestBody Shootout shootout, @PathVariable Integer shootoutId) {
        try {
            Shootout existShootout = shootoutService.getShootout(shootoutId);
            shootout.setShootout_id(shootoutId);
            shootoutService.saveShootout(shootout);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    @DeleteMapping("/{shootout_id}")
    public void deleteGoalscorer(@PathVariable Integer shootoutId) {

        shootoutService.deleteShootout(shootoutId);
    }
}
