package com.luxoft.aviso.server.dao.impl;


import com.luxoft.aviso.server.dao.SourceVersionDao;
import com.luxoft.aviso.server.model.Attribute;
import com.luxoft.aviso.server.model.SourceVersion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class SourceVersionImpl implements SourceVersionDao{

    private static final String SELECT_SOURCE_OBJECT = "select v.version_id, " +
                                                        "v.attr_id, " +
                                                        "d.attr_desc, " +
                                                        "d.attr_status, " +
                                                        "v.version_date, " +
                                                        "v.VERSION_STATUS " +
                    "from version v " +
                    "join ATTR_DICTIONARY d on d.attr_id=v.attr_id " +
                        "where 1=1 ";
    private static final String BY_ID = "and v.version_id =:version_id ";
    private static final String STATUS_ACTIVE = "and v.version_status = '1' ";

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<SourceVersion> getAllSourceVersion() {
        return jdbcTemplate.query(SELECT_SOURCE_OBJECT + STATUS_ACTIVE, new SourceVersionRowMapper());
    }

    @Override
    public SourceVersion getSourceVersionById(Integer sourceVersionId) {
        return (SourceVersion) jdbcTemplate.query(SELECT_SOURCE_OBJECT + BY_ID, new SourceVersionRowMapper(), sourceVersionId).get(0);
    }

    private class SourceVersionRowMapper implements RowMapper {
        public SourceVersion mapRow(ResultSet rs, int rowNum) throws SQLException {
            SourceVersion sourceVersion = new SourceVersion();
            sourceVersion.setSourceVersionId(rs.getInt("VERSION_ID"));
            Attribute source = new Attribute();
            source.setId(rs.getString("ATTR_ID"));
            source.setDescription(rs.getString("ATTR_DESC"));
            source.setUiStatus(rs.getBoolean("ATTR_STATUS"));
            sourceVersion.setSource(source);
            sourceVersion.setStatus(rs.getString("VERSION_STATUS"));
            sourceVersion.setVersion(rs.getDate("VERSION_DATE"));
            return sourceVersion;
        }

    }
}
