package com.luxoft.aviso.server.parser;

import com.luxoft.aviso.server.parser.slando.SlandoParser;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HtmlHelper {

    private static Logger log = Logger.getLogger(HtmlHelper.class.getName());

    @Autowired
    private SlandoParser slandoParser;

    public void enter() {
        log.info("Parsing Slando");
        slandoParser.start();

    }


}
