<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title><fmt:message key="title.phoneBook"/></title>
</head>
<body>
<div id="content">
    <jsp:include page="templates.jsp" />
    <table class="addPhone">
        <tr>
                <td>
                    <fmt:message key="phone.enter"/>:
                </td>
                <td>
                    <input type='tel' id='phoneNumberSearch' pattern="[0][0-9]{2}\s[0-9]{3}\s[0-9]{2}\s[0-9]{2}"
                           title='(Формат: 063 123 45 67)'>
                </td>
                <td>
                    <button type="button" id="searchTel" class="btn btn-primary btn-large">
                        <fmt:message key="action.find"/>
                    </button>
                </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <div id="searchTelMsg"></div>
            </td>
        </tr>
    </table>
<br>
    <hr>
    <br>
</div>
<ul id="results"></ul>

<div id="phoneDetails"></div>

</body>
</html>