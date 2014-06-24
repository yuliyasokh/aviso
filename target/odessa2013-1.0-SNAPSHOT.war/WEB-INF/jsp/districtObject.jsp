<%--
  Created by IntelliJ IDEA.
  User: Yuliya
  Date: 04.09.13
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<table class="districtTbl">
    <tr>
        <td class="mainLaber">
            <fmt:message key="label.choseDistrict"/>:
        </td>
        <td>
            <input type="checkbox" id="suvorov" checked class="controls checkbox">
            <label for="suvorov" class="inLine">
                <fmt:message key="search.district.suvorov"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="primor" class="controls checkbox">
            <label for="primor" class="inLine">
                <fmt:message key="search.district.primor"/>
            </label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="checkbox" id="allDist" class="controls checkbox">
            <label for="allDist" class="inLine">
                <fmt:message key="search.all"/>
            </label>
        </td>
    </tr>

</table>
</html>