package com.luxoft.training.server.dao;

import com.luxoft.training.server.model.Attribute;

import java.util.List;

public interface DictionaryDao {

    List<Attribute> getAllDistricts();

    List<Attribute> getAllSources();

    List<Attribute> getAllObjectTypes();

    List<Attribute> getAllNumberOfRooms();


}
