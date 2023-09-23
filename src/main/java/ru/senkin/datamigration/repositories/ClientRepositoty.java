package ru.senkin.datamigration.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ru.senkin.datamigration.entities.Client;

@Repository
public interface ClientRepositoty extends JpaRepository<Client, Long>{
    
    Optional<Client> findById(Long id);
    
}
