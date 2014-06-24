package com.luxoft.training.server.dao;

import com.luxoft.training.server.model.Client;

import java.util.List;

public interface ClientDao {
    Client insert(Client client);
    Client getById(Integer id);
    List<Client> getByLastName(String lastName);
    List<Client> getAll();
    void deleteAll();
    boolean deleteById(Integer id);
    boolean update(Client client);

    String testConnection();
}
