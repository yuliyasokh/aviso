package com.luxoft.aviso.web;

import com.luxoft.aviso.server.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
public class CommonController {

    @Autowired
    private DictionaryService dictionaryService;

    @RequestMapping(value = "/versionObjects")
    public void versionObjects( Model model) {
        Locale.setDefault(Locale.ENGLISH);
        model.addAttribute("papers", dictionaryService.getAllSources());
    }


}
