<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <title><decorator:title default="Недвижимость"/></title>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" type="text/javascript"></script>
    <%--<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.js" type="text/javascript"></script>--%>
<%--<script src="${pageContext.request.contextPath}/libs/jquery.tmpl.js" type="text/javascript"></script>--%>
    <script src="${pageContext.request.contextPath}/js/main.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/search.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/phoneNum.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js" type="text/javascript"></script>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <decorator:head/>
</head>
<body>

<div contactId="container">
    <div class="navbar">
        <div class="navbar-inner">
            <a class="brand" href="${pageContext.request.contextPath}/search/">Работа с недвижимостью</a>
            <ul class="nav">
                <li class="active"><a href="${pageContext.request.contextPath}/search/">Поиск недвижимости</a></li>
                <li><a href="${pageContext.request.contextPath}/phoneNum/">Телефоный справочник</a></li>
                <li><a href="${pageContext.request.contextPath}/versionObjects/">Версии источников</a></li>
                <li><a href="${pageContext.request.contextPath}/phoneNum/">Объекты недвижимости</a></li>
            </ul>
        </div>
    </div>
    <div class="container">
        <decorator:body/>
    </div>

    <div contactId="footer">
    </div>
</div>


</body>
</html>