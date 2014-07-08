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
        var updateData = [
            {
                phoneId: data.phoneId,
                phoneNumber: data.phoneNumber,
                phoneAddedDate: data.phoneAddedDate,
                updateDate: data.updateDate,
                phoneSource: data.phoneSource ? data.phoneSource.description : ""
            }
        ];
        updatePhoneTemplate.tmpl(updateData).appendTo("#phoneDetails");
        $("#descr").val(data.phoneDescription);
        $("#updatePhoneNumberBtn").click(function () {
            var data = {
                phoneId: $("#phoneId").val(),
                telDescription: $("#descr").val()
            };
            updateDeleteAddPhoneNumber('phoneNumUpd', data);
        });
        $("#deletePhoneNumberBtn").click(function () {
            updateDeleteAddPhoneNumber('phoneNumDel', { phoneId: $("#phoneId").val()});
        })
    }

    function updateDeleteAddPhoneNumber(url, data) {
        $.ajax({
            type: 'GET',
            url: url,
            data: data,
            dataType: 'json',
            success: successChangesApplied
        });
    }

    function numberNotFound(){
        $("#phoneNotFoundTemplate").tmpl().appendTo("#phoneDetails");
        var telNumber = $("#phoneNumberSearch").val();
        $("#addPhoneNumber").click(function () {
            $("#phoneDetails").empty();
            $("#addPhoneNumberTemplate").tmpl([{phoneNumber: telNumber}]).appendTo("#phoneDetails");
            $("#addPhoneBtn").click(function () {
                var data = [
                    {
                        telNumber: telNumber.replace(/\s+/g, ''),
                        telDescription: $("#descr").val()
                    }
                ];
                updateDeleteAddPhoneNumber('phoneNumAdd', data);
            })
        });
    }

    function successChangesApplied(){
        $("#phoneDetails").empty();
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

});