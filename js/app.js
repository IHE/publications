getHeaders();
buildBreadcrumbs();
buildSections();
$(document).foundation();

// Generic AJAX GET client, handles variable number of arguments. 
// All arguments are then passed to the call-back function, 
// with the addition of the HTTP response body (passed as 
// the first argument to the call-back function.
var HttpClient = function() {
    var args = Array.prototype.slice.call(arguments);
    this.get = function(url, callback) {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function() {
            if (httpRequest.readyState == 4 && httpRequest.status == 200) {
                args.unshift(httpRequest.responseText);
                callback.apply(null, args);
            }
        }

        httpRequest.open("GET", url, true);
        httpRequest.send(null);
    }
}

//Toggler functions
$('[data-toggler]').on('on.zf.toggler', function() {
    //var prefix = this.id.substr(0, this.id.lastIndexOf("-"));
    //$('#' + prefix + '-more').html('Read more<i class="fi fi-arrows-expand" aria-hidden="true"></i>');
    console.log('Toggler is On - ' + prefix);

});

$('[data-toggler]').on('off.zf.toggler', function() {
    //var prefix = this.id.substr(0, this.id.lastIndexOf("-"));
    //$('#' + prefix + '-more').html('Read less<i class="fi fi-arrows-compress" aria-hidden="true"></i>');
    console.log('Toggler is Off - ' + prefix);
});

$('.iframe-toggle').click(function( event ){
    console.log('Toggle clicked');
    $('#audit-5.1.1').foundation('toggle');
    event.preventDefault();
});

//execute body element functions
/*for (i = 0; i < hr_functions.length; i++) {
    hr_functions[i]();
}*/

var currYear = new Date().getFullYear();
$("#current-year").text(currYear);

//Handle search
$("#ihe-search-button").click(function() {
    var searchValue = $("#ihe-search-field").val();
    if (searchValue.length >0) {
        var query = escape("site:https://profiles.ihe.net " + searchValue);
        window.location.href = "https://google.com/search?q=" + query;
    }
});

$('#ihe-search-field').keypress(function(e) {
    if(e.which == 13) {
        $(this).blur();
        $('#ihe-search-button').focus().click();
    }
});

//Back to top
$(function() {

    $(document).on('scroll', function() {

        if ($(window).scrollTop() > 100) {
            $('.scroll-top-wrapper').addClass('show');
        } else {
            $('.scroll-top-wrapper').removeClass('show');
        }
    });

    $('.scroll-top-wrapper').on('click', scrollToTop);
});

function scrollToTop() {
    verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
    element = $('body');
    offset = element.offset();
    offsetTop = offset.top;
    $('html, body').animate({ scrollTop: offsetTop }, 500, 'linear');
}

function buildSections() {
    var element = $("main");
    var headers = findTopHeader(element);
    var top = headers.top;
    var children = headers.children;

    if (top.multiple !== undefined) {
        console.log('Mutliple top-level headers');
    }
    else {
        console.log('Top is ' + top.attr('id'));
    }
    menuItems = $(document.createElement("ul"));
    menuItems.addClass("vertical menu");

    if (top.multiple !== undefined) {
        $('#section-menu').append(top.link);
    }
    else {
        $('#section-menu').append("<a href='#" + top.attr('id') + "'>"+ top.text() + "</a>\n");
    }

    var subsections = element.find(children);
    subsections.each(function() {
        menuItems.append("<li><a href='#" + $(this).attr('id') + "'>" + $(this).text() + "</a></li>\n");
        $('#tf-small-menu-list').append("<li><a href='#" + $(this).attr('id') + "'>" + $(this).text() + "</a></li>\n");
    });
    $('#section-menu').append(menuItems);
    //smallMenu.append(smallMenuList);
    //$('#tf-small-menu').append(smallMenu);
    
}

function findTopHeader(element) {
    var retValue = {};
    retValue.top = element.find("h1");
    console.log("How many h1? " +retValue.top.length)
    if (retValue.top.length == 1) {
        retValue.children = "h2";
    }
    else if (retValue.top.length > 1) {
        retValue.children = "h1";
        retValue.top = {"multiple":true};
    }
    else if (retValue.top['length'] == 0) {
        retValue.top = element.find("h2");
        console.log("How many h2? " +retValue.top.length)
        if (retValue.top.length == 1) { 
          retValue.children = "h3";
        }
        else if (retValue.top.length > 1) {
            retValue.children="h2";
            retValue.top = {"multiple":true};
        }
    }
    if ((retValue.top.multiple !== undefined) && (retValue.top.multiple))
    {
        retValue.top.link = "<a href='#'>"+ "Sections" + "</a>\n";
    }
    return retValue;
}

function buildBreadcrumbs() {
    if ($('.breadcrumbs').length < 1) {
        return;
    }
    var path = window.location.pathname;
    console.log("The path is ",path);
    var pathParts = getPathParts(path);
    if (pathParts.length == 0) {
        return;
    }
    
    var pathURLs = getURLs(pathParts);
    var crumbs = [];

    var headers = findTopHeader($("main"));
    var currText = "";
    if (headers.top.multiple === undefined) {
        currText=headers.top.text();
    }

    if (/^[0-9]$/.test(currText[0])) {
        currText = currText.substr(currText.indexOf(' ')+1)
    }
    crumbs.unshift('<li><span  class="show-for-sr">Current: </span> '+ currText + "</li>");
    if ((pathParts[0] !== "GeneralIntro") && (pathParts[pathParts.length-1].startsWith(pathParts[0] + "-"))) {
        //Domain-specific chapter 3 trasactions in individual pages
        console.log(pathParts[pathParts.length-1]);
        crumbs.unshift('<li class="disabled">Chapter 3</li>');
    }
    if ((pathParts.length > 3) && (pathParts[pathParts.length-3].toLowerCase() === "tf")) {
        if (pathParts[pathParts.length-2].toLowerCase() === "volume1") {
            crumbs.unshift('<li><a href="./index.html">Volume 1</a></li>');
            $('#volumeNo').text("1");
        } else if (pathParts[pathParts.length-2].toLowerCase() === "volume2") {
            crumbs.unshift('<li><a href="./index.html">Volume 2</a></li>');
            $('#volumeNo').text("2");
        } else if (pathParts[pathParts.length-2].toLowerCase() === "volume3") {
            crumbs.unshift('<li><a href="./index.html">Volume 3</a></li>');
            $('#volumeNo').text("3");
        } else if (pathParts[pathParts.length-2].toLowerCase() === "volume4") {
            crumbs.unshift('<li><a href="./index.html">Volume 4</a></li>');
            $('#volumeNo').text("4");
        }
        crumbs.unshift('<li><a href="../index.html">Technical Framework</a></li>');   
    }
    else if ((pathParts.length == 3) && (pathParts[pathParts.length-2].toLowerCase() === "tf")) {
        crumbs.unshift('<li><a href="./index.html">Technical Framework</a></li>')
    }

    if (pathURLs.domain !== "") {
        var domainName = "";
        if (pathParts[0] === "GeneralIntro") {
            domainName = "General Introduction";
        }
        else {
            domainName = pathParts[0];
        }
        crumbs.unshift('<li><a href="' + pathURLs.domain +'">' + domainName + '</a></li>');
    }
    crumbs.unshift('<li><a href="' + pathURLs.home +'">Home</a></li>');

    crumbs.forEach(element => $('.breadcrumbs').append(element));
}

function getPathParts(path) {
    var result=path.split("/");
    console.log("Number of parts: " + result.length);
    result.shift(); //empty string
    if (result[0] === "publications")
    {
        //we are at github.io, remove first segment of path
        result.shift();
    }
    console.log("Number of parts: " + result.length);
    if (result.length == 1) {
        if ((result[0] === "") || (result[0] === "index.html"))
        {
            //root element, not breadcrumbs
            return [];
        }
    }
    console.log("Number of parts: " + result.length);
    return result;
}

function getURLs(pathParts)
{
    var url = {};
    if (pathParts.length == 1) {
        url.home = "./index.html";
        url.domain = "";
        return url;
    }
    var stepsBack = pathParts.length - 2;
    var prefix = "";

    for (i=0; i<stepsBack; i++) {
        prefix=prefix + "../";
    }

    if (prefix === "") {
        url.domain = "./index.html";
    }
    else {
        url.domain = prefix + "index.html";
    }

    url.home = prefix + "../" + "index.html";

    return url;
}

function googSearch() {
    var searchField = $("#ihe-search-field");
    if (searchField && searchField.value) {
        var query = encodeURIComponent("site:https://profiles.ihe.net " + searchField.value);
        window.location.href = "https://google.com/search?q=" + query;
    }
}

function getHeaders() {
    var headers = $("h1, h2, h3, h4, h5, h6, .heading7, .heading8");
    var anchor;
    var link;
    console.log("how many? " + headers.length);
    for (i=0; i<headers.length; i++) {
        headers[i].append(" ");
        anchor = document.createElement("a");
        anchor.setAttribute("class","heading-link");
        anchor.setAttribute("href", headers[i].baseURI.split("#")[0] + "#" + headers[i].id);
        anchor.setAttribute("title","Click to copy link");
        link = document.createElement("i");
        link.setAttribute("class","fi fi-link");

        anchor.appendChild(link);

        headers[i].append(anchor);
    }
}

//copy anchor link to clipboard on click
$('.heading-link').click(function (e) {
    //e.preventDefault();
    var copyText = $(this).attr("href")
    document.addEventListener('copy', function(e) {
       e.clipboardData.setData('text/plain', copyText);
       e.preventDefault();
    }, true);
 
    document.execCommand('copy');  
    //console.log('copied text : ', copyText); 
  });