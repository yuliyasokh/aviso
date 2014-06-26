
function GetCurrentPageName() {
    var PageURL = document.location.href;
    var PageName = PageURL.substring(0, PageURL.length - 1);
    return PageName.substring(PageName.lastIndexOf('/') + 1);
}

$(function () {
        var CurrPage = GetCurrentPageName();

        switch(CurrPage){
            case 'phoneNum':
                $('#phoneNum_nav').addClass('active');
                break;
            case 'search':
                $('#search_nav').addClass('active');
                break;
            case 'versionObjects':
                $('#versionObjects_nav').addClass('active');
                break;
            case 'objects':
                $('#objects_nav').addClass('active');
                break;
        }


});