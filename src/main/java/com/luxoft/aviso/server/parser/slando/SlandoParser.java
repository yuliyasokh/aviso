package com.luxoft.aviso.server.parser.slando;


import com.luxoft.aviso.server.model.ObjectAttr;
import com.luxoft.aviso.server.parser.ObjectHelper;
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
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

@Component
public class SlandoParser {
    private static Logger log = Logger.getLogger(SlandoParser.class.getName());

    private final String FIRST_PAGE = "http://odessa.od.slando.ua/nedvizhimost/prodazha-kvartir/?search%5Bprivate_business%5D=private&search%5Bdistrict_id%5D=91&currency=USD";
    private final String PAGE_COUNTER = "%5C&page=";

    @Autowired
    private ObjectHelper objectHelper;

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
        List<Map<ObjectAttr, String>> convertedObjects = new ArrayList<Map<ObjectAttr, String>>();
        long startTime = System.currentTimeMillis();
        log.info("Started parsing found objects");
        for (String objectLink : objectLinks) {
            try {
                Document doc = Jsoup.connect(objectLink).get();
                convertedObjects.add(parseObject(doc));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        long endTime = System.currentTimeMillis();
        long totalTime = endTime - startTime;

        log.info("Time of parsing found objects " + totalTime / 1000 + " seconds");
    }

    private Map<ObjectAttr, String> parseObject(Document doc) {
        Map<ObjectAttr, String> parsedObject = new EnumMap<ObjectAttr, String>(ObjectAttr.class);

        String numberOfRooms = doc.select("tr.brbottdashc8").get(1).select("strong").get(0).childNode(0).toString();
        String desc = doc.select("#textContent").select("p.large").text();

        objectHelper.setNumberOfRooms(parsedObject, numberOfRooms);
        objectHelper.setDescription(parsedObject, desc);
        objectHelper.setDistrict(parsedObject, "Suvorovskiy");
        objectHelper.setSource(parsedObject, "Slando");
        objectHelper.setLink(parsedObject, doc.baseUri());
        objectHelper.setTitle(parsedObject, doc.title());

        return parsedObject;

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
