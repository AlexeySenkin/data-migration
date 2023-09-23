package ru.senkin.datamigration.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import ru.senkin.datamigration.servises.ClientServise;

@RestController
@RequiredArgsConstructor
@CrossOrigin(origins = "*", allowCredentials = "false")
public class PgController {

    public final ClientServise clientServise;

    @PostMapping("/pgClient")
    public ResponseEntity<?> pgClient(@RequestBody )
    
}
