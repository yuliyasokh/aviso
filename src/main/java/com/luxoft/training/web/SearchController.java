package com.luxoft.training.web;

import com.luxoft.training.server.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Locale;

@Controller
public class SearchController {

    public static final String CLIENT_ALL = "client.all";

    @Autowired
    private DictionaryService dictionaryService;

    @RequestMapping(value = "/search/")
    public String mainSearch( Model model) {
        Locale.setDefault(Locale.ENGLISH);

        model.addAttribute("papers", dictionaryService.getAllSources());
        model.addAttribute("districts", dictionaryService.getAllDistricts());
        model.addAttribute("types", dictionaryService.getAllObjectTypes());
        model.addAttribute("numberOfRooms", dictionaryService.getAllNumberOfRooms());
        return CLIENT_ALL;
    }

    @RequestMapping(value = "/phoneNum")
    public void phoneNum() {
    }

    @RequestMapping(value = "/phoneNumSearch", method = RequestMethod.GET)
    public
    @ResponseBody
    String getTime(String telNumber) {
        return "hello";
    }

}
