<%--
  Created by IntelliJ IDEA.
  User: Yuliya
  Date: 04.09.13
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<table class="newspaperTbl">
    <jstl:forEach items="${papers}" var="p">
        <tr>
            <%--<td><input type="checkbox" id="roomsOne" checked class="controls checkbox"></td>--%>
            <td>
               ${p.description}
            </td>
        </tr>
    </jstl:forEach>
</table>
</html>