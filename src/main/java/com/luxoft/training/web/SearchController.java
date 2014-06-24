package com.luxoft.training.web;

import com.luxoft.training.server.model.Paper;
import com.luxoft.training.server.service.ClientService;
import com.luxoft.training.server.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/client")
public class SearchController {

    public static final String CLIENT_ALL = "client.all";

    @Autowired
    private DictionaryService dictionaryService;

    @RequestMapping(value = "/")
    public String versionObjects( Model model) {
        Locale.setDefault(Locale.ENGLISH);

        model.addAttribute("papers", dictionaryService.getAllSources());
        model.addAttribute("districts", dictionaryService.getAllDistricts());
        model.addAttribute("types", dictionaryService.getAllObjectTypes());
        model.addAttribute("numberOfRooms", dictionaryService.getAllNumberOfRooms());
        return CLIENT_ALL;
        //hello
    }

}
