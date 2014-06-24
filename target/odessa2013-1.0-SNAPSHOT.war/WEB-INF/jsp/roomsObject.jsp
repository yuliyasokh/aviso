<%--
  Created by IntelliJ IDEA.
  User: Yuliya
  Date: 04.09.13
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <table class="typeTbl">
        <tr>
            <td class="mainLaber">
                <fmt:message key="label.rooms"/>:
            </td>
            <td>
                <input type="checkbox" id="roomsOne" checked class="controls checkbox">
                <label for="roomsOne" class="inLine">
                    <fmt:message key="rooms.one"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input type="checkbox" id="roomsTwo" class="controls checkbox">
                <label for="roomsTwo" class="inLine">
                    <fmt:message key="rooms.two"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input type="checkbox" id="roomsThree" class="controls checkbox">
                <label for="roomsThree" class="inLine">
                    <fmt:message key="rooms.three"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input type="checkbox" id="roomsFour" class="controls checkbox">
                <label for="roomsFour" class="inLine">
                    <fmt:message key="rooms.fourPlus"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <input type="checkbox" id="roomsAll" class="controls checkbox">
                <label for="roomsAll" class="inLine">
                    <fmt:message key="search.all"/>
                </label>
            </td>
        </tr>
    </table>
</html>