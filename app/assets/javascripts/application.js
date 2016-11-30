// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$.ajaxSetup({
    dataType: 'json'
});

$('.form_restaurant_comment').bind('ajax:success', function(e, data, status, xhr){
    $("#"+e.currentTarget.id+" .alert-success").removeClass('hidden').html('Save with success!');

    $("#restaurant_comments_"+data.comment.restaurant_id)
        .append('<li class="list-group-item"><strong>'+data.comment.author+'</strong><br>- '+data.comment.message+'</li>');

    $("#"+e.currentTarget.id+" input, textarea").val('');

    var alert_danger = $("#"+e.currentTarget.id+" .alert-danger");
    if (alert_danger.hasClass('hidden') != true) alert_danger.addClass('hidden');

}).bind('ajax:error', function(e, data, status, xhr){
    var errors = data.responseJSON;
    var html = '<ul class="list-inline">';

    $.each(errors, function(index, value){
        html += '<li>'+index+' '+value+'</li>';
    });
    html += '</ul>';

    $("#"+e.currentTarget.id+" .alert-danger").removeClass('hidden').html(html);
    var alert_success = $("#"+e.currentTarget.id+" .alert-success");
    if (alert_success.hasClass('hidden') != true) alert_success.addClass('hidden');

});