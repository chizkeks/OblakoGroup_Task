// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require select2-full
// require rails-ujs
//= require activestorage
// require turbolinks
//= require_tree .
//= require_self

//$(function() {
    //$(document).foundation();
//});

$(document).ready(function() {

    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        increaseArea: '20%', // optional
    });

    $('.icheck-me').on('ifChanged', function() {
        $('.icheckbox_square-blue.hover + .input-todo-label').css('text-decoration', 'line-through');
        $('.icheckbox_square-blue.hover.checked + .input-todo-label').css('text-decoration', 'none');
    });

    $('.icheck-me').on('ifClicked', function() {
        $('#update-todo-form').submit();
    });

    $("#cancel-link").on("click", function () {
        $(".form-body").css('visibility', 'hidden');
    });

    $("#add-todo-link").on("click", function () {
        $(".form-body").css('visibility', 'visible');
    });


    $("#create-link").on("click", function () {
        $("#add-todo-form").submit();
    });

    $("select").select2({
        theme: "bootstrap",
        placeholder: "Категория",
        dropdownCssClass : 'no-search',
        width: 2000,
        height: 40,
        minimumResultsForSearch: Infinity

    });

});
