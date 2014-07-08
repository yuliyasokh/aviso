package com.luxoft.aviso.server.dao;


import com.luxoft.aviso.server.model.SourceVersion;

import java.util.List;

public interface SourceVersionDao {

    List<SourceVersion> getAllSourceVersion();

    SourceVersion getSourceVersionById(Integer sourceVersionId);
}
