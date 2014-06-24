package com.luxoft.training.server.service.impl;


import com.luxoft.training.server.dao.DictionaryDao;
import com.luxoft.training.server.dao.impl.DictionaryImpl;
import com.luxoft.training.server.model.Attribute;
import com.luxoft.training.server.service.DictionaryService;

import java.util.List;

public class DictionaryServiceImpl implements DictionaryService{

    private DictionaryDao dictionaryDao;

    public DictionaryServiceImpl(DictionaryDao dictionaryDao) {
        this.dictionaryDao = dictionaryDao;
    }

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
