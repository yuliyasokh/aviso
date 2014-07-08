package com.luxoft.aviso.server.service;


import com.luxoft.aviso.server.model.SourceVersion;

import java.util.List;

public interface SourceVersionService {

    List<SourceVersion> getAllSourceVersion();

    SourceVersion getSourceVersionById(Integer sourceVersionId);

    List<SourceVersion> getSourceVersionByAttrId(Integer attrId, int countResult);
}
