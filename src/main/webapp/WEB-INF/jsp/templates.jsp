<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<template id="addPhoneNumberTemplate" type="text/x-jquery-tmpl">
    <table>
        <tr>
            <td>
                <fmt:message key="phone.enter"/>:
            </td>
            <td>
            </td>
            <td>
                <input type='tel' id='phoneNumberAdd' value=\${phoneNumber} disabled>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="phone.description"/>:
            </td>
            <td>
            </td>
            <td>
                <textarea id="descr"></textarea>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><button type="button" class="btn-success btn-large"><fmt:message key="action.add"/></button></td>
        </tr>
    </table>
</template>

<template id="updatePhoneNumberTemplate" type="text/x-jquery-tmpl">
    <table>
        <tr>
            <td>
                <fmt:message key="phone.enter"/>:
            </td>
            <td>
            </td>
            <td>
                <input type='tel' disabled value=\${phoneNumber}>
            </td>
        </tr>
        <tr>
            <td>
                <fmt:message key="phone.dataAdded"/>:
            </td>
            <td>
            </td>
            <td>
                <input type='text' disabled value="\${phoneAddedDate}">
            </td>
        </tr>
        <c:if test="${not empty phoneSource}">
            <tr>
                <td>
                    <fmt:message key="phone.source"/>:
                </td>
                <td>
                </td>
                <td>
                    <input type='text' disabled value="\${phoneSource.description}">
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <fmt:message key="phone.description"/>:
            </td>
            <td>
            </td>
            <td>
                <textarea id="descr" value="\${phoneDescription}"></textarea>
            </td>
        </tr>
        <tr>
            <td><button type="button" id="deletePhoneNumber" class="btn-danger btn-large"><fmt:message key="action.delete"/></button></td>
            <td></td>
            <td style="text-align: right">
                <button type="button" id="updatePhoneNumber" class="btn-warning btn-large"><fmt:message key="action.update"/></button>
            </td>
        </tr>
    </table>
  <input type="hidden" id="phoneId" value=\${phoneId}>
</template>

<template id="phoneNotFoundTemplate" type="text/x-jquery-tmpl">
    <span>
        Номер не найден. <a id="addPhoneNumber" href="#" >Добавить?</a>
    </span>
</template>