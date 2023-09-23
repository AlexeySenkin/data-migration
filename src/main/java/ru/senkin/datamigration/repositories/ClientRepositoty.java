package ru.senkin.datamigration.repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import ru.senkin.datamigration.entities.Client;

@Repository
public interface ClientRepositoty {
    Optional<Client> findById(Long id);
}
