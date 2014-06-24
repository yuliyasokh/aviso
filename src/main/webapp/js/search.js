$(function () {

    $("input[type='checkbox'].all").change(function () {
        checkOtherCheckBoxes(this.name, this.checked);
    });

    function checkOtherCheckBoxes(name, checked) {
        var allCheckboxes = $('input[name=' + name + ']');
        allCheckboxes.prop('checked', checked);
    }

});