package com.luxoft.aviso.server.dao;

import com.luxoft.aviso.server.model.Attribute;

import java.util.List;

public interface DictionaryDao {

    List<Attribute> getAllDistricts();

    List<Attribute> getAllSources();

    List<Attribute> getAllObjectTypes();

    List<Attribute> getAllNumberOfRooms();


}
