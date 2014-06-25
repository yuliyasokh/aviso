package com.luxoft.training.web;

import com.luxoft.training.server.model.Client;
import com.luxoft.training.server.service.ClientService;
import com.luxoft.training.web.validate.ClientValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.DataBinder;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class ClientController {

    public static final String REDIRECT_CLIENT = "redirect:/client/";
    public static final String CLIENT_SHOW = "client.show";
    public static final String CLIENT_ALL = "client.all";

    @InitBinder
    public void addValidator(DataBinder binder) {
        if (binder.getTarget() != null && binder.getTarget().getClass().equals(Client.class)) {
            binder.addValidators(new ClientValidator());
        }
    }

    private ClientService svc;


    @RequestMapping("/")
    public String listAll(Model model) {
        model.addAttribute("clients", svc.getAll());
        return CLIENT_ALL;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String show(@PathVariable Integer id, Model model) {
        if (id == 0) {
            model.addAttribute(new Client("test", "client"));
        } else {
            model.addAttribute(svc.getById(id));
        }

        return CLIENT_SHOW;
    }



    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    public String save(@Valid Client client, Errors errors) {
        if (errors.hasErrors()) {
            return CLIENT_SHOW;
        }
        svc.save(client);
        return REDIRECT_CLIENT;
    }

    @RequestMapping(value = "/{id}/delete")
    public String remove(@PathVariable Integer id) {
        svc.delete(id);
        return REDIRECT_CLIENT;
    }

//    @RequestMapping("/search")
//    public String search(SearchQuery query, Model model) {
//        model.addAttribute("clients", svc.getByLastName(query.getSurnameQuery()));
//        return CLIENT_ALL;
//    }

    public ClientService getSvc() {
        return svc;
    }

    public void setSvc(ClientService svc) {
        this.svc = svc;
    }

    public static class SearchQuery {
        private String surnameQuery;

        public String getSurnameQuery() {
            return surnameQuery;
        }

        public void setSurnameQuery(String surnameQuery) {
            this.surnameQuery = surnameQuery;
        }
    }
}
