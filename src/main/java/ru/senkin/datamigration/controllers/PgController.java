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
    @GetMapping("/client/{id}")
    public ResponseEntity<?> findClientById(@PathVariable long id ) {
        try {
            log.debug("получение клиента по id, {}", id);
            return ResponseEntity.ok().body(clientServise.findById(id)); 
        } catch (Exception e) {
            log.debug("Ошибка получения клиента по id, {}", id);
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    /**
     * Возвращаети сдиента по идентификатору
     * 
     * @param id идентификатор
     * @return клиент
     */
    @GetMapping("/clients")
    public ResponseEntity<?> findClients() {
        try {
            log.debug("получение всех клиентов");
            return ResponseEntity.ok().body(clientServise.findAll()); 
        } catch (Exception e) {
            log.debug("Ошибка получения всех клиентов");
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
    
}
