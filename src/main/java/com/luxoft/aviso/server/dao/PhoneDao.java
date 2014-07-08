package com.luxoft.aviso.server.dao;


import com.luxoft.aviso.server.model.Phone;

import java.util.List;

public interface PhoneDao {

    Phone getPhoneByNumber(String phoneNumber);

    Phone getPhoneById(Integer phoneId);

    Phone addPhoneNumber(Phone phone);

    void addPhoneNumberNoReturn(Phone phone);

    void deletePhoneNumber(Phone phone);

    Phone updatePhoneNumber(Phone phone);

    List getAllPhones();
}
