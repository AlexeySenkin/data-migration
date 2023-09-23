package ru.senkin.datamigration.servises;


import java.util.Optional;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import ru.senkin.datamigration.repositories.ClientRepositoty;
import ru.senkin.datamigration.entities.Client;

@Service
@RequiredArgsConstructor
public class ClientServise {

    private final ClientRepositoty clientRepository;

    public Optional<Client> findById(Long id) {
        return clientRepository.findById(id);
    }

}
