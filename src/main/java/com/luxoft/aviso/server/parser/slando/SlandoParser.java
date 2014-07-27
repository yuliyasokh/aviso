package com.luxoft.aviso.server.parser.slando;


import com.luxoft.aviso.server.dao.DictionaryDao;
import com.luxoft.aviso.server.model.GroupType;
import com.luxoft.aviso.server.model.Object;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class SlandoParser {
    private static Logger log = Logger.getLogger(SlandoParser.class.getName());

    @Autowired
    private DictionaryDao dao;

    private final String FIRST_PAGE = "http://odessa.od.slando.ua/nedvizhimost/prodazha-kvartir/?search%5Bprivate_business%5D=private&search%5Bdistrict_id%5D=91&currency=USD";
    private final String PAGE_COUNTER = "%5C&page=";

    public void start() {
        Document doc;
        try {
            log.info("Start parsing...");
            long startTime = System.currentTimeMillis();
            doc = Jsoup.connect(FIRST_PAGE).get();
            List<String> objectLinks = new ArrayList<String>();
            int pageCount = getPageCount(doc);
            objectLinks.addAll(parsePage(doc));
            for (int i = 2; i < pageCount + 1; i++) {
                objectLinks.addAll(parsePage(i));
            }
            long endTime = System.currentTimeMillis();
            long totalTime = endTime - startTime;
            log.info("Time of parser working for " + pageCount + " pages: " + totalTime / 1000 + " seconds");
            log.info("Found " + objectLinks.size() + " objects");
            parseObject(objectLinks);


        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void parseObject(List<String> objectLinks) {
        List<Object> objs = new ArrayList<Object>();
        long startTime = System.currentTimeMillis();
        log.info("Started parsing found objects");
        for (String objectLink : objectLinks) {
            try {
                Document doc = Jsoup.connect(objectLink).get();
                objs.add(parseObject(doc));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        long endTime = System.currentTimeMillis();
        long totalTime = endTime - startTime;

        log.info("Time of parsing found objects " + totalTime / 1000 + " seconds");
    }

    private Object parseObject(Document doc) {

        String numberOfRooms = convertNumberOfRooms(doc.select("tr.brbottdashc8").get(1).select("strong").get(0).childNode(0).toString().trim());
        String desc = doc.select("#textContent").select("p.large").text();

        Object object = new Object();
        object.setObjectDesc(desc);
        object.setObjectLink(doc.baseUri());
        object.setObjectDistrict(dao.getAttributeByNameAndType("Суворовский", GroupType.DISTRICT.getCode()));
        object.setObjectNumberOfRooms(dao.getAttributeByNameAndType(numberOfRooms, GroupType.NUMBER_OF_ROOMS.getCode()));
        object.setObjectSource(dao.getAttributeByNameAndType("Сландо", GroupType.SOURCE.getCode()));
        object.setObjectTitle(doc.title());


        return object;
    }

    private String convertNumberOfRooms(String numberOfRooms) {
        Integer numberRooms = Integer.valueOf(numberOfRooms);
        return numberRooms > 3 ? "4+" : numberOfRooms;
    }


    private List<String> parsePage(Document doc) {
        List<String> objectLinks = new ArrayList<String>();
        if (doc != null) {
            Elements links = doc.select("td.offer");
            for (Element link : links) {
                Attributes object = link.select("a.link").get(0).attributes();
                objectLinks.add(object.get("href"));
            }
        }
        return objectLinks;
    }

    private List<String> parsePage(int numPage) {
        try {
            Document doc = Jsoup.connect(FIRST_PAGE + PAGE_COUNTER + numPage).get();
            return parsePage(doc);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private int getPageCount(Document doc) {
        Node pCount;
        pCount = doc.select("span.item").get(13).select(".lheight24").get(0).children().get(0).childNode(0);
        return Integer.valueOf(pCount.toString());
    }

}
