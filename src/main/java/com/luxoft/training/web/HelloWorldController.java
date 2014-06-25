package com.luxoft.training.web;

import com.luxoft.training.server.model.Paper;
import com.luxoft.training.server.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Simple index page controller serving hello.jsp file 
 */
@Controller
public class HelloWorldController {

    private ClientService svc;

    /**
     * Simply serves hello.jsp
     * @return view with name 'hello'
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public void handleRequest(Model model) {
        Locale.setDefault(Locale.ENGLISH);
        List<Paper> papers = new ArrayList<Paper>();
        papers.add( new Paper(1, svc.test(), new Date()));
        model.addAttribute("papers", papers);
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

    @RequestMapping(value = "/versionObjects")
    public void versionObjects( Model model) {
        Locale.setDefault(Locale.ENGLISH);
    }
}