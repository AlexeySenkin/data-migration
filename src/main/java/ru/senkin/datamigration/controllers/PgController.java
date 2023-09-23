package ru.senkin.datamigration.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import ru.senkin.datamigration.servises.ClientServise;

@RestController
@RequiredArgsConstructor
@Slf4j
@CrossOrigin(origins = "*", allowCredentials = "false")
public class PgController {

    public final ClientServise clientServise;


    /**
     * Возвращаети сдиента по идентификатору
     * 
     * @param id идентификатор
     * @return клиент
     */
    @GetMapping("/client{id}")
    public ResponseEntity<?> findClientById(@PathVariable Long id ) {
        try {
            log.debug("получение клиента по id, {}", id);
            return ResponseEntity.ok().body(clientServise.findById(id)); 
        } catch (Exception e) {
            log.debug("Ощибка получения клиента по id, {}", id);
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
    
}
