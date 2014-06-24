<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jstl" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div contactId="content">

    <table>
        <tr>
            <th>Regulator</th>
            <th>Country</th>
            <th>Regulation type</th>
            <th>Go to</th>

        </tr>
         <tr>
                <td>${regulatory.regulator.name}</td>
                <td>${regulatory.regulator.country.name}</td>
                <td>${regulatory.regulationType}</td>
                <td><a href="/cmstr/client/${clientId}/regulatory/">Back</a></td>

            </tr>

    </table>
</div>
</body>
</html>