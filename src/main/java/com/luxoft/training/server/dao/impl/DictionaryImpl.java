package com.luxoft.training.server.dao.impl;


import com.luxoft.training.server.dao.DictionaryDao;
import com.luxoft.training.server.model.Attribute;
import com.luxoft.training.server.model.GroupType;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class DictionaryImpl implements DictionaryDao{

    private static String QUERY ="SELECT  a.attr_id as id, " +
                                    "a.attr_desc as description, " +
                                    "g.attr_ui_status uiStatus " +
                            "FROM attr_dictionary a " +
                            "JOIN ATTR_GRP g ON g.attr_id = a.attr_id " +
                            "JOIN attr_dictionary ad ON ad.attr_id = g.grp_id " +
                                "WHERE ad.attr_name =:code " +
                                "AND a.attr_status = 1 " +
                                "AND g.attr_ui_status = 1";

    private JdbcTemplate jdbcTemplate;

    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    @Override
    public List<Attribute> getAllDistricts() {
        return getAllAttributes(GroupType.DISTRICT.getCode());
    }

    @Override
    public List<Attribute> getAllSources() {
        return getAllAttributes(GroupType.SOURCE.getCode());
    }

    @Override
    public List<Attribute> getAllObjectTypes() {
        return getAllAttributes(GroupType.TYPE.getCode());
    }

    @Override
    public List<Attribute> getAllNumberOfRooms() {
        return getAllAttributes(GroupType.NUMBER_OF_ROOMS.getCode());
    }

    private List<Attribute> getAllAttributes(String code){
        return jdbcTemplate.query(QUERY, new BeanPropertyRowMapper<Attribute>(Attribute.class), code);
    }
}
