<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div contactId="content">
    <form:form modelAttribute="regulatory">
        <form:hidden path="id" />
        <form:hidden path="client.id"/>
        <form:hidden path="regulator.id"/>
        <p>${regulatory.regulator.name}</p>
        Type of regulation:<form:input path="regulationType" />
        <input type="submit" value="Save!" class="btn btn-primary">
    </form:form>
</div>
</body>
</html>