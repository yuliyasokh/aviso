package com.luxoft.training.web.validate;

import com.luxoft.training.server.model.Client;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ClientValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(Client.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "client.fname.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "client.lname.empty");
    }
}
