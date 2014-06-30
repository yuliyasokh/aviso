$(function () {

    $('#phoneNumberSearch').mouseout(function () {
        modifyTelNumber('#phoneNumberSearch');
    });

    $('#searchTel').click(function () {
        $("#phoneDetails").empty();
        var telNumber = $.trim($('#phoneNumberSearch').val());
        if (telNumber.length == 13 && isNumeric(telNumber)) {
            $.ajax({
                type: 'GET',
                url : 'phoneNumSearch',
                data : { telNumber: telNumber},
                dataType: 'json',
                success : successHandler
            });

        } else {
            errorTelNumber('#searchTelMsg', telNumber);
        }
    });

    function successHandler(data){
        $("#phoneDetails").empty();
        if (data.phoneNumber){
            updatePhone(data);
        } else {
            numberNotFound();
        }

    }
    function updatePhone(data){
        var updatePhoneTemplate = $("#updatePhoneNumberTemplate");
        var data = [
            {
                phoneId: data.phoneId,
                phoneNumber: data.phoneNumber,
                phoneAddedDate: data.phoneAddedDate,
                phoneSource: data.phoneSource,
                phoneDescription: data.phoneDescription
            }
        ];
        updatePhoneTemplate.tmpl(data).appendTo("#phoneDetails");

    }
    function numberNotFound(){
        $("#phoneNotFoundTemplate").tmpl().appendTo("#phoneDetails");
        $("#addPhoneNumber").click(function () {
            $("#phoneDetails").empty();
            $("#addPhoneNumberTemplate").tmpl().appendTo("#phoneDetails");
            $("#phoneNumberAdd").val($("#phoneNumberSearch").val())
        });
    }

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
        return /^ *[0-9][0-9 ]*$/.test(str);
    }

})