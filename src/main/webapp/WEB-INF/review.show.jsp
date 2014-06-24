<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div contactId="content">
    <form:form modelAttribute="client" class="form-horizontal">
        <form:hidden path="id"/>
        <div class="control-group">
            <form:label path="firstName" class="control-label">First name:</form:label>
            <div class="controls"><form:input path="firstName"/></div>
        </div>
        <div class="control-group">
            <form:label path="firstName" class="control-label">User name:</form:label>
            <div class="controls"><form:input path="lastName"/></div>
        </div>
        <div class="control-group">
            <div class="controls">
                <input type="submit" value="Save!" class="btn btn-primary">
                <input type="reset" value="Discard" class="btn btn-warning">
            </div>
        </div>
    </form:form>
</div>
</body>
</html>