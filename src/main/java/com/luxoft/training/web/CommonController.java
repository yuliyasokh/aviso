package com.luxoft.training.web;

import com.luxoft.training.server.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommonController {

    @Autowired
    private DictionaryService dictionaryService;

    @RequestMapping(value = "/versionObjects")
    public void versionObjects( Model model) {
        model.addAttribute("papers", dictionaryService.getAllSources());
    }


}
