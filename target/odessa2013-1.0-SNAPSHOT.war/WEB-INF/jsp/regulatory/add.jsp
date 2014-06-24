<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div contactId="content">


        <form:form action="/cmstr/client/${clientId}/regulatory/save" method="post">
            Regulator:
            <select name="regulators">
                <jstl:forEach items="${regulators}" var="regulator">
                    <option value="${regulator.id}">${regulator.name}</option>
                </jstl:forEach>
            </select>
            <br/>
            Regulation type:
            <input type="text" name="regulationType"/>
            <input type="submit" value="Add!" class="btn btn-primary">
        </form:form>


</div>
</body>
</html>