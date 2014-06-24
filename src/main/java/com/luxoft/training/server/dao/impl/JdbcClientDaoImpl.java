package com.luxoft.training.server.dao.impl;

import com.luxoft.training.server.dao.ClientDao;
import com.luxoft.training.server.model.Client;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class JdbcClientDaoImpl implements ClientDao {

    public static final String SELECT_ALL = "select client_id as id, fname as firstName, lname as lastName from client";

    private JdbcTemplate jdbcTemplate;

    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Client insert(Client client) {
       return null;
    }

    @Override
    public Client getById(Integer id) {
        return null;
    }

    @Override
    public List<Client> getAll() {
        return null;
    }

    @Override
    public void deleteAll() {

    }

    @Override
    public List<Client> getByLastName(String lastName) {
        return null;

    }

    @Override
    public boolean deleteById(Integer id) {
        return false;
    }

    @Override
    public boolean update(Client client) {
        return false;
    }

    @Override
    public String testConnection() {
        return jdbcTemplate.queryForObject("select sysdate from dual", String.class);
    }

    public JdbcClientDaoImpl() {
    }
}
