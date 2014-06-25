$(function () {

    $('#phoneNumberSearch').mouseout(function () {
        modifyTelNumber('#phoneNumberSearch');
    });

    $('#phoneNumberAdd').mouseout(function () {
        modifyTelNumber('#phoneNumberAdd');
    });

    $('#searchTel').click(function () {
        var telNumber = $.trim($('#phoneNumberSearch').val());
        if (telNumber.length == 13 && isNumeric(telNumber)) {
            $.ajax({
                type: 'GET',
                url : 'phoneNumSearch',
                data : { telNumber: telNumber},
                dataType: 'json',
                success : function(data) {
                    alert(data);
                }
            });

        } else {
            errorTelNumber('#searchTelMsg', telNumber);
        }
    });

    function modifyTelNumber(idSelector) {
        var telNumber = $.trim($(idSelector).val()).replace(/\s+/g, '');
        if (telNumber.length == 10) {
            var modifiedTelNumber = "";
            for (var i = 0; i < telNumber.length; i++) {
                modifiedTelNumber += i == 2 || i == 5 || i == 7 ? telNumber[i] + " " : telNumber[i];
            }
            $(idSelector).val(modifiedTelNumber);
        }
    }

    function errorTelNumber(telNumber, msgDivId) {
        $(msgDivId).empty();
        $(msgDivId).append("<span class='errorMessage'>Номер " + telNumber + " имеет неверный формат</span>");
    }

    function isNumeric(str) {
        return /^\d+$/.test(str);
    }

})