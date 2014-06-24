<%--
  Created by IntelliJ IDEA.
  User: Yuliya
  Date: 07.09.13
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>
        Телефоный справочник
    </title>
</head>
<body>
<div id="content">
    <table class="addPhone">
        <tr>
            <td>
                <fmt:message key="phone.enter"/>:
            </td>
            <td>
                <input type='tel' id='tel'  pattern="[0][0-9]{2}\s[0-9]{3}\s[0-9]{2}\s[0-9]{2}"
                       title='(Формат: 063 123 45 67)'>
            </td>
            <td>
            </td>
        </tr>
        </tr>
        <td>
            <fmt:message key="phone.description"/>:
        </td>
        <td>
            <textarea id="descr"></textarea>
        </td>
        <td>
            <button type="button" class="btn-success btn-large"><fmt:message key="action.add"/></button>
        </td>
        </tr>
        <tr>
        </tr>
        <td><br/></td>
        <td></td>
        <td></td>
        <tr>
            <td>
                <fmt:message key="phone.enter"/>:
            </td>
            <td>
                <input type='tel' id='phone'  pattern="[0][0-9]{2}\s[0-9]{3}\s[0-9]{2}\s[0-9]{2}"
                       title='(Формат: 063 123 45 67)'>
            </td>
            <td>
                <button type="button" class="btn btn-primary btn-large"><fmt:message key="action.find"/></button>
            </td>
        </tr>
    </table>
</div>

</body>
</html>