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

}
