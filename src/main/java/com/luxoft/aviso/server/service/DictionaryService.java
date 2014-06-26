package com.luxoft.aviso.server.service;


import com.luxoft.aviso.server.model.Attribute;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface DictionaryService {

    List<Attribute> getAllDistricts();

    List<Attribute> getAllSources();

    List<Attribute> getAllObjectTypes();

    List<Attribute> getAllNumberOfRooms();
}
