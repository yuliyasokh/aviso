package com.luxoft.training.server.service.impl;

import com.luxoft.training.server.dao.ClientDao;
import com.luxoft.training.server.model.Client;
import com.luxoft.training.server.service.ClientService;

import java.util.List;

import static com.google.common.base.Preconditions.checkNotNull;

public class ValidatingClientServiceImpl implements ClientService {

    private ClientDao clientDao;


    public ValidatingClientServiceImpl(ClientDao clientDao) {
        this.clientDao = clientDao;
    }

    public String test(){
        return clientDao.testConnection();
    }
    @Override
    public Client getById(Integer id) {
        checkNotNull(id, "Id should not bee null");
        return clientDao.getById(id);
    }

    @Override
    public Client save(Client client) {
        if(client.getId() != null) {
            boolean res = clientDao.update(client);
            //todo: add check for non-existing id
            return client;
        } else {
            return clientDao.insert(client);
        }
    }

    @Override
    public boolean delete(Client client) {
        Integer id = client.getId();
        checkNotNull(id, "Should be existing client");
        return clientDao.deleteById(id);
    }

    @Override
    public boolean delete(Integer id) {
        checkNotNull(id, "Client should exist");
        return clientDao.deleteById(id);
    }

    @Override
    public List<Client> getAll() {
        return clientDao.getAll();
    }

    @Override
    public List<Client> getByLastName(String query) {
        return clientDao.getByLastName(query);
    }

}
