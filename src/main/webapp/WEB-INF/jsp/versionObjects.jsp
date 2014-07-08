<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title><fmt:message key="title.sourceVersion"/></title></head>
<body>
<div id="content">
    <table id="versionSourcesTbl" class="table table-striped">
        <tr>
            <th><fmt:message key="sourceVersion.source"/></th>
            <th><fmt:message key="sourceVersion.lastUpdate"/></th>
            <th></th>
            <th></th>
        </tr>
        <jstl:forEach items="${sources}" var="sources">
            <tr>
                <td>${sources.source.description}</td>
                <td>${sources.version}</td>
                <td>
                    <a href="#" class="lastUpdates" id="${sources.source.id}">
                        <fmt:message key="label.lastTenUpdates"/>
                    </a>
                </td>
                <td style="text-align: right">
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