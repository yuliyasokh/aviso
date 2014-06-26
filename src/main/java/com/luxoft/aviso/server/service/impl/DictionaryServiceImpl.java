package com.luxoft.aviso.server.service.impl;


import com.luxoft.aviso.server.dao.DictionaryDao;
import com.luxoft.aviso.server.model.Attribute;
import com.luxoft.aviso.server.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class DictionaryServiceImpl implements DictionaryService{

    @Autowired
    private DictionaryDao dictionaryDao;

//    public DictionaryServiceImpl(DictionaryDao dictionaryDao) {
//        this.dictionaryDao = dictionaryDao;
//    }

    @Override
    public List<Attribute> getAllDistricts() {
        return dictionaryDao.getAllDistricts();
    }

    @Override
    public List<Attribute> getAllSources() {
        return dictionaryDao.getAllSources();
    }

    @Override
    public List<Attribute> getAllObjectTypes() {
        return dictionaryDao.getAllObjectTypes();
    }

    @Override
    public List<Attribute> getAllNumberOfRooms() {
        return dictionaryDao.getAllNumberOfRooms();
    }

}
