<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head><title><fmt:message key="title.search"/></title></head>
<body>
<div id="content">
    <table class="mainTbl">
        <tbody>
        <tr>
            <td>
                <%--display all sources--%>
                <table class="newspaperTbl">
                    <tr>
                        <td class="mainLaber">
                            <fmt:message key="label.chosePaper"/>:
                        </td>
                        <td>
                            <label class="inLine"><input type="checkbox" name="paper" class="all controls checkbox">
                            <fmt:message key="search.all"/> </label>
                        </td>
                    </tr>
                    <jstl:forEach items="${papers}" var="p">
                        <tr>
                            <td></td>
                            <td class="toTop">
                                <label class="inLine">
                                <input type="checkbox" name="paper" class="controls checkbox">${p.description}
                                </label>
                            </td>
                        </tr>
                    </jstl:forEach>
                </table>
            </td>
            <td>
                <%--display all disctricts--%>
                <table class="districtTbl">
                    <tr>
                        <td class="mainLaber">
                            <fmt:message key="label.choseDistrict"/>:
                        </td>
                        <td>
                            <label class="inLine">
                            <input type="checkbox" name="district" class="all controls checkbox">
                            <fmt:message key="search.all"/> </label>
                        </td>
                    </tr>
                    <jstl:forEach items="${districts}" var="d">
                        <tr>
                            <td></td>
                            <td class="toTop">
                                <label class="inLine">
                                <input type="checkbox" name="district" class="controls checkbox">
                                        ${d.description}
                                </label>
                            </td>
                        </tr>
                    </jstl:forEach>
                </table>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td>
                <%--display all types of objects--%>
                <table class="typeObjTbl">
                    <tr>
                        <td class="mainLaber">
                            <fmt:message key="label.type"/>:
                        </td>
                        <td>
                            <label class="inLine">
                            <input type="checkbox" name="type" class="all controls checkbox">
                            <fmt:message key="search.all"/> </label>
                        </td>
                    </tr>
                    <jstl:forEach items="${types}" var="t">
                        <tr>
                            <td></td>
                            <td class="toTop">
                                <label class="inLine">
                                <input type="checkbox" name="type" class="controls checkbox">
                                        ${t.description}
                                </label>
                            </td>
                        </tr>
                    </jstl:forEach>
                </table>

            </td>
            <td>
                <%--display all numbers of rooms--%>
                <table class="typeTbl">
                    <tr>
                        <td class="mainLaber">
                            <fmt:message key="label.rooms"/>:
                        </td>
                        <td>
                            <label class="inLine">
                            <input type="checkbox" name="numRooms" class="all controls checkbox">
                            <fmt:message key="search.all"/> </label>
                        </td>
                    </tr>
                    <jstl:forEach items="${numberOfRooms}" var="r">
                        <tr>
                            <td></td>
                            <td class="toTop">
                                <label class="inLine">
                                <input type="checkbox" name="numRooms" class="controls checkbox">
                                ${r.description} </label>
                            </td>
                        </tr>
                    </jstl:forEach>
                </table>
            </td>
        </tr>
        </tbody>
    </table>
    <br/>
    <jsp:include page="advancedSearchObject.jsp"/>
    <br/>
    <br/>
    <table class="btn-group">
        <tr>
            <td>
                <button type="button" class="btn-action btn-large"><fmt:message key="action.clear"/></button>
            </td>
            <td class="emptyTd"></td>
            <td>
                <button type="button" class="btn btn-primary btn-large"><fmt:message key="action.find"/></button>
            </td>
        </tr>
    </table>

</div>
</body>
</html>