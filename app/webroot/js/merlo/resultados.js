$(function() {
    var html = '';
    html += '<div class="col-sm-1 readonly">8</div>';
    html += '<div class="col-sm-4 readonly">PARTIDO FEDERAL</div>';
    html += '<div class="col-sm-3 readonly">LISTA -A- ROJO</div>';
    $("#agrupaciones .form-group").prepend(html);
    
    $(".disabled").attr("disabled", true).attr("placeholder", "NO USAR");
    $("#agrupaciones .input label").remove();
});