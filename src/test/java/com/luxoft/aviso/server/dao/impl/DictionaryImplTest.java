package com.luxoft.aviso.server.dao.impl;

import com.luxoft.aviso.ApplicationContextAwareTest;
import com.luxoft.aviso.server.dao.DictionaryDao;
import com.luxoft.aviso.server.model.Attribute;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;


public class DictionaryImplTest extends ApplicationContextAwareTest {

    @Autowired
    private DictionaryDao dictionary;

    @Test
    public void testGetAllSources() throws Exception {
        List<Attribute> attributes = dictionary.getAllSources();
        assertNotNull(attributes);
        assertTrue(attributes.size() > 0);
    }
}
