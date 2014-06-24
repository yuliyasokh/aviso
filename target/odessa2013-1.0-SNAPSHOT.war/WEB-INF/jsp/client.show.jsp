<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>CMSTR - Edit client</title></head>
<body>
<div id="content">
    <div class="row-fluid">
        <div class="span2">
            <jstl:if test="${client.id>0}">
            <ul class="nav nav-list">
                <li class="nav-header">Client information</li>
                <li><a href="${client.id}/product/">Products</a></li>
                <li><a href="${client.id}/contact/">Contacts</a></li>
                <li><a href="${client.id}/contract/">Contracts</a></li>
                <li><a href="${client.id}/linkedclient/">Linked&nbsp;clients</a></li>
                <li><a href="${client.id}/shareholder/">Shareholders</a></li>
                <li><a href="${client.id}/regulatory/">Regulators</a></li>
                <li><a href="${client.id}/rating/">Ratings</a></li>
                <li><a href="${client.id}/ubscontact/">UBS&nbsp;Contacts</a></li>
                <li><a href="${pageContext.request.contextPath}/client/${client.id}/review/">Reviews</a></li>
            </ul>
            </jstl:if>
        </div>
        <div class="span9">
            <form:form modelAttribute="client" class="form-horizontal">
                <form:hidden path="id"/>
                <div class="control-group">
                    <form:label path="firstName" class="control-label">First name:</form:label>
                    <div class="controls">
                        <form:input path="firstName"/>
                        <form:errors path="firstName">
                            <i class="icon-warning-sign"></i> <form:errors path="firstName" />
                        </form:errors>
                    </div>
                </div>
                <div class="control-group">
                    <form:label path="firstName" class="control-label">User name:</form:label>
                    <div class="controls">
                        <form:input path="lastName"/>
                        <form:errors path="lastName">
                            <i class="icon-warning-sign"></i> <form:errors path="lastName" />
                        </form:errors>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <input type="submit" value="Save!" class="btn btn-primary">
                        <input type="reset" value="Discard" class="btn btn-warning">
                        <a href="." class="btn">Go back to list</a>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
    </div>
</body>
</html>