package com.luxoft.aviso.server.service.impl;


import com.luxoft.aviso.server.dao.PhoneDao;
import com.luxoft.aviso.server.model.Phone;
import com.luxoft.aviso.server.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhoneServiceImpl implements PhoneService{

    @Autowired
    private PhoneDao phoneDao;

    @Override
    public Phone getPhoneByNumber(String phoneNumber) {
        return phoneDao.getPhoneByNumber(phoneNumber);
    }

    @Override
    public Phone getPhoneById(Integer phoneId) {
        return phoneDao.getPhoneById(phoneId);
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
        return phoneDao.getAllPhones();
    }
}
