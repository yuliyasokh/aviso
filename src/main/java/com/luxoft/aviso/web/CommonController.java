package com.luxoft.aviso.web;

import com.luxoft.aviso.server.parser.HtmlHelper;
import com.luxoft.aviso.server.service.SourceVersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Locale;

@Controller
public class CommonController {

    @Autowired
    private SourceVersionService sourceVersionService;

    @Autowired
    private HtmlHelper htmlHelper;

    @RequestMapping(value = "/versionObjects")
    public void versionObjects( Model model) {
        Locale.setDefault(Locale.ENGLISH);
        model.addAttribute("sources", sourceVersionService.getAllSourceVersion());
    }

    @RequestMapping(value = "/versionObjects/startParser", method = RequestMethod.GET)
    public
    @ResponseBody
    void startParserForSource(String sourceId) {
        Locale.setDefault(Locale.ENGLISH);
        htmlHelper.enter();

    }


}
