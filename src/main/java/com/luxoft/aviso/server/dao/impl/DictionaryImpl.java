package com.luxoft.aviso.server.dao.impl;


import com.luxoft.aviso.server.dao.DictionaryDao;
import com.luxoft.aviso.server.exception.AttributeNotFoundException;
import com.luxoft.aviso.server.model.Attribute;
import com.luxoft.aviso.server.model.GroupType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class DictionaryImpl implements DictionaryDao{

    private static String QUERY ="SELECT  a.attr_id as id, " +
                                    "a.attr_desc as description, " +
                                    "g.attr_ui_status uiStatus " +
                            "FROM attr_dictionary a " +
                            "JOIN ATTR_GRP g ON g.attr_id = a.attr_id " +
                            "JOIN attr_dictionary ad ON ad.attr_id = g.grp_id " +
                                "WHERE ad.attr_name =:code " +
                                "AND a.attr_status = 1 " +
                                "AND g.attr_ui_status = 1 ";

    private static String GET_BY_ID = "AND a.attr_id =:id";

    private JdbcTemplate jdbcTemplate;

    @Autowired
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

    @Override
    public Attribute getAttributeByIdAndType(Integer attrId, String code) {
        return jdbcTemplate.queryForObject(QUERY + GET_BY_ID, new BeanPropertyRowMapper<Attribute>(Attribute.class), code, attrId);
    }

    private List<Attribute> getAllAttributes(String code) {
        List<Attribute> attributes = jdbcTemplate.query(QUERY, new BeanPropertyRowMapper<Attribute>(Attribute.class), code);
        try {
            if (attributes.isEmpty()) {
                throw new AttributeNotFoundException();
            }
        } catch (AttributeNotFoundException e) {
            e.printStackTrace();
        }
        return attributes;
    }
}
