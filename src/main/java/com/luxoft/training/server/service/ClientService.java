package com.luxoft.training.server.service;

import com.luxoft.training.server.model.Client;

import java.util.List;

public interface ClientService {

    Client getById(Integer id);
    Client save(Client client);
    boolean delete(Client client);
    boolean delete(Integer id);
    List<Client> getAll();
    List<Client> getByLastName(String query);

    String test();

}
