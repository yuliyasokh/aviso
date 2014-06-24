<%--
  Created by IntelliJ IDEA.
  User: Yuliya
  Date: 04.09.13
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<table class="typeObjTbl">
    <tr>
        <td class="mainLaber">
            <fmt:message key="label.type"/>:
        </td>
        <td>
            <input type="checkbox" id="typeApp" checked class="controls checkbox">
            <label for="typeApp" class="inLine">
                <fmt:message key="type.app"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="typeHouse" class="controls checkbox">
            <label for="typeHouse" class="inLine">
                <fmt:message key="type.house"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="typeCommuna" class="controls checkbox">
            <label for="typeCommuna" class="inLine">
                <fmt:message key="type.communa"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="typeProperty" class="controls checkbox">
            <label for="typeProperty" class="inLine">
                <fmt:message key="type.property"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="typeAll" class="controls checkbox">
            <label for="typeAll" class="inLine">
                <fmt:message key="search.all"/>
            </label>
        </td>
    </tr>
</table>
</html>