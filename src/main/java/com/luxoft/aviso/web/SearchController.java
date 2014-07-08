package com.luxoft.aviso.web;

import com.luxoft.aviso.server.model.Phone;
import com.luxoft.aviso.server.service.DictionaryService;
import com.luxoft.aviso.server.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Locale;

@Controller
public class SearchController {

    public static final String SEARCH_ALL = "search.all";
    private static final String ADDED_FROM_UI = "Номер был добавлен в телефоном справочнике.";

    @Autowired
    private DictionaryService dictionaryService;

    @Autowired
    private PhoneService phoneService;

    @RequestMapping(value = "/search")
    public String mainSearch( Model model) {
        Locale.setDefault(Locale.ENGLISH);
        model.addAttribute("papers", dictionaryService.getAllSources());
        model.addAttribute("districts", dictionaryService.getAllDistricts());
        model.addAttribute("types", dictionaryService.getAllObjectTypes());
        model.addAttribute("numberOfRooms", dictionaryService.getAllNumberOfRooms());
        return SEARCH_ALL;
    }

    @RequestMapping(value = "/phoneNum")
    public void phoneNum() {
    }

    @RequestMapping(value = "/phoneNum/phoneNumSearch", method = RequestMethod.GET)
    public
    @ResponseBody
    Phone getPhoneByNumber(String telNumber) {
        Locale.setDefault(Locale.ENGLISH);
        return phoneService.getPhoneByNumber(telNumber);
    }

    @RequestMapping(value = "/phoneNum/phoneNumAdd", method = RequestMethod.GET)
    public
    @ResponseBody
    void addPhoneNumber(String telNumber, String telDescription) {
        Locale.setDefault(Locale.ENGLISH);
        Phone phone = new Phone();
        phone.setPhoneNumber(telNumber);
        phone.setPhoneDescription(telDescription + " " + ADDED_FROM_UI);
        phoneService.addPhoneNumberNoReturn(phone);
    }

    @RequestMapping(value = "/phoneNum/phoneNumDel", method = RequestMethod.GET)
    public
    @ResponseBody
    void deletePhoneNumber(String phoneId) {
        Locale.setDefault(Locale.ENGLISH);
        Phone phone = new Phone();
        phone.setPhoneId(Integer.decode(phoneId));
        phoneService.deletePhoneNumber(phone);
    }

    @RequestMapping(value = "/phoneNum/phoneNumUpd", method = RequestMethod.GET)
    public
    @ResponseBody
    void updatePhoneNumber(String phoneId, String telDescription) {
        Locale.setDefault(Locale.ENGLISH);
        Phone phone = new Phone();
        phone.setPhoneId(Integer.decode(phoneId));
        phone.setPhoneDescription(telDescription);
        phoneService.updatePhoneNumber(phone);
    }

}
