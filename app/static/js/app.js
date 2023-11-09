function myAjax(options) {
    if (options.action === undefined)
        options.action = ""
    if (options.type === undefined)
        options.type = "POST";
    options.url = window.location.origin + options.action
    options.contentType = 'application/json; charset=utf-8';
    options.dataType = "json";

    return $.ajax(options);
}
