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
<input type="checkbox" id="adSearch" class="controls checkbox"/>
<label for="adSearch" class="inLine">
    <fmt:message key="search.advanced"/>
</label>
<br/>
<table class="advSearchTbl">
    <tr>
        <td><fmt:message key="label.keywords"/>:</td>
        <td><input type="text" size="40"></td>
    </tr>
    </table>
    </br>
<input type="checkbox" id="phoneSearch" checked class="controls checkbox"/>
<label for="phoneSearch" class="inLine">
    <fmt:message key="label.checkPhone"/>
</label>
</html>