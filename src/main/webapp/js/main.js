$(function () {

    $('ul li').click(function () {
        $('.nav').find('li').removeClass('active');
        this.className = 'active';
        var s = this.name;
    });

});