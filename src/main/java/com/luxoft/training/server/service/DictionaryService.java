package com.luxoft.training.server.service;


import com.luxoft.training.server.model.Attribute;

import java.util.List;

public interface DictionaryService {

    List<Attribute> getAllDistricts();

    List<Attribute> getAllSources();

    List<Attribute> getAllObjectTypes();

    List<Attribute> getAllNumberOfRooms();
}
