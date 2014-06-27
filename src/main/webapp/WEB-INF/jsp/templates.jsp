<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

<template id="addPhoneNumberTemplate" type="text/x-jquery-tmpl">
    <table>
        <tr>
            <td>
                <fmt:message key="phone.enter"/>:
            </td>
            <td>
            </td>
            <td>
                <input type='tel' id='phoneNumberAdd' disabled value="${phoneNumber}">
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

    </table>
</template>

<template id="phoneNotFoundTemplate" type="text/x-jquery-tmpl">
    <span>
        Номер не найден. <a id="addPhoneNumber" href="#" onclick='
        $("#phoneDetails").empty();
        $("#addPhoneNumberTemplate").tmpl().appendTo("#phoneDetails");
        $("#phoneNumberAdd").val($("#phoneNumberSearch").val())
        '>Добавить?</a>
    </span>
</template>