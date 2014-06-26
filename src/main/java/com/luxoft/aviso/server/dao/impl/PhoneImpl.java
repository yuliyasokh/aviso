package com.luxoft.aviso.server.dao.impl;


import com.luxoft.aviso.server.dao.DictionaryDao;
import com.luxoft.aviso.server.dao.PhoneDao;
import com.luxoft.aviso.server.model.GroupType;
import com.luxoft.aviso.server.model.Phone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class PhoneImpl implements PhoneDao{

    @Autowired
    private DictionaryDao dictionaryDao;

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Phone getPhoneByNumber(String phoneNumber) {
        return null;
    }

    @Override
    public Phone getPhoneById(Integer phoneId) {
        return null;
    }

    @Override
    public Phone addPhoneNumber(Phone phone) {
        return null;
    }

    @Override
    public void addPhoneNumberNoReturn(Phone phone) {

    }

    @Override
    public void deletePhoneNumber(Phone phone) {

    }

    @Override
    public Phone updatePhoneNumber(Phone phone) {
        return null;
    }

    @Override
    public List<Phone> getAllPhones() {
        List<Phone> phones = jdbcTemplate.query("select * from phone", new PhoneRowMapper());
        return phones;
    }

    private class PhoneRowMapper implements RowMapper{
        public Phone mapRow(ResultSet rs, int rowNum) throws SQLException {
            Phone phone = new Phone();
            phone.setPhoneId(rs.getInt("PHONE_ID"));
            phone.setPhoneNumber(rs.getString("PHONE_NUM"));
            phone.setPhoneDescription(rs.getString("PHONE_DESC"));
            phone.setPhoneAddedDate(rs.getDate("PHONE_DATE"));
            phone.setPhoneStatus(rs.getInt("PHONE_STATUS"));
            Integer sourceId = rs.getInt("PHONE_SRC_ID");
            if (sourceId != 0) {
                phone.setPhoneSource(dictionaryDao.getAttributeByIdAndType(sourceId, GroupType.SOURCE.getCode()));
            }
            return phone;
        }

    }
}
