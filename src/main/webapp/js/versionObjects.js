$(function () {

    $(".lastUpdates").click(function () {
        var sourceId = this.id;
    });

    $(".startParser").click(function () {
        var sourceId = this.name;
        if (sourceId){
            startParser(sourceId);
        }
    });

    function startParser(sourceId){
        $.ajax({
            type: 'GET',
            url: "startParser",
            data: { sourceId: sourceId},
            dataType: 'json',
            success: successParserStarted
        });
    }

    function successParserStarted(){

    }


});