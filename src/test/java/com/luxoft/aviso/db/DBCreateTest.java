package com.luxoft.aviso.db;

import com.luxoft.aviso.ApplicationContextAwareTest;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

public class DBCreateTest extends ApplicationContextAwareTest {

    private JdbcTemplate jdbcTemplate;

    @Ignore
    @Test
    public void testCreateDB() throws Exception {
        jdbcTemplate.queryForList("select * from ATTR_DICTIONARY");
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

}
