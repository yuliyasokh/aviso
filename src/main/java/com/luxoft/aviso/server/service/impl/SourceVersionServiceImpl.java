package com.luxoft.aviso.server.service.impl;


import com.luxoft.aviso.server.dao.SourceVersionDao;
import com.luxoft.aviso.server.model.SourceVersion;
import com.luxoft.aviso.server.service.SourceVersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SourceVersionServiceImpl implements SourceVersionService{

    @Autowired
    private SourceVersionDao sourceVersionDao;

    @Override
    public List<SourceVersion> getAllSourceVersion() {
        return sourceVersionDao.getAllSourceVersion();
    }

    @Override
    public SourceVersion getSourceVersionById(Integer sourceVersionId) {
        return sourceVersionDao.getSourceVersionById(sourceVersionId);
    }

    @Override
    public List<SourceVersion> getSourceVersionByAttrId(Integer attrId, int countResult) {
        return null;
    }
}
