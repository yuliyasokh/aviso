package com.luxoft.aviso.server.service;


import com.luxoft.aviso.server.model.Attribute;

import java.util.List;

public interface DictionaryService {

    List<Attribute> getAllDistricts();

    List<Attribute> getAllSources();

    List<Attribute> getAllObjectTypes();

    List<Attribute> getAllNumberOfRooms();
}
