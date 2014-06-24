<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Версии источников</title></head>
<body>
<div id="content">
    <table class="table table-striped">
        <jstl:forEach items="${papers}" var="paper">
            <tr>
                <td>${paper.paperName}</td>
                <td>${paper.version}</td>
                <td>
                    <div class="btn-group">
                        <a class="btn btn-info" href="${paper.paperId}">
                            <fmt:message key="action.startParser"/>
                        </a>
                    </div>
                </td>
            </tr>
        </jstl:forEach>
    </table>
   </div>
</body>
</html>