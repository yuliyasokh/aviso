package com.luxoft.aviso.server.parser;

import com.luxoft.aviso.server.model.ObjectAttr;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class ObjectHelper {

    public Map<ObjectAttr, String> setType(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_TYPE, value);
        return map;
    }

    public Map<ObjectAttr, String> setDistrict(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_DISTRICT, value);
        return map;
    }

    public Map<ObjectAttr, String> setSource(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_SOURCE, value);
        return map;
    }

    public Map<ObjectAttr, String> setLink(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_LINK, value);
        return map;
    }

    public Map<ObjectAttr, String> setNumberOfRooms(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_NUM_ROOMS, value);
        return map;
    }

    public Map<ObjectAttr, String> setDescription(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_DESC, value);
        return map;
    }

    public Map<ObjectAttr, String> setPhone(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_PHONE, value);
        return map;
    }

    public Map<ObjectAttr, String> setTitle(Map<ObjectAttr, String> map, String value) {
        map.put(ObjectAttr.OBJECT_TITLE, value);
        return map;
    }
}
