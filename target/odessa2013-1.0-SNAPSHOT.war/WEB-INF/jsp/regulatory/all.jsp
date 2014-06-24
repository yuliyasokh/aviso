<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
        <div id="content">
            <table class="table table-striped">
                <jstl:forEach items="${regulatories}" var="regulatory">
                    <tr>
                        <td>${regulatory.regulator.name}</td>
                        <td>${regulatory.regulator.country.name}</td>
                        <td>${regulatory.regulationType}</td>
                        <!--<td><a href="/cmstr/client/${clientId}/regulatory/${regulatory.id}/">click here</a></td>-->
                        <td>
                            <div class="btn-group">
                                <a class="btn" href="/cmstr/client/${clientId}/regulatory/${regulatory.id}/edit">Edit</a>
                                <a class="btn btn-danger" href="/cmstr/client/${clientId}/regulatory/${regulatory.id}/delete">Remove!</a>
                            </div>
                        </td>
                    </tr>
                </jstl:forEach>

            </table>
            <br/>

            <a href="/cmstr/client/${clientId}/regulatory/add" class="btn">Add new regulator!</a>
        </div>

    </body>
</html>

