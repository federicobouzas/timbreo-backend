$(function() {
    $("td.acciones").each(function() {
        $(this).find(":nth-child(2)").removeClass("btn-inverse").addClass("btn-info");
        $(this).find(":nth-child(3)").removeClass("btn-inverse").addClass("btn-success");
    });
});


