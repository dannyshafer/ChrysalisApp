// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('#login_button').on('click', function(event) {
    console.log("button");
    event.preventDefault();
    $('#login').slideToggle(1000);
    $('#signup').slideToggle(1000);
  });

  $('#add').on('submit', function(event){
    event.preventDefault();
    var path = '/ajax_mutf';
    var surveyData = $(this).serialize();
    var request = $.ajax({
      url: path,
      type: 'post',
      data: surveyData,
    });
    request.done(function(response){
      $(".fund_summary").show();
      $(".fund_summary").html(response + "<br>");
    });

  });

  $('body').on('click', ".individual_fund", function(event) {
    event.preventDefault();
    console.log("made it to the ajax request");
    $('#welcome').hide(1000);
    var path = $(this).attr('href');
    var request = $.ajax({
      url: path,
      type: 'get',
      dataType: "JSON"
    });
    console.log("made it a little further");
    request.done(function(fund_data) {
      debugger
      $(".fund_summary").show();
      $(".fund_summary").html(fund_data + "<br>");
    });

    request.fail(function(fund_data) {
      debugger
      console.log("not this time, precious!")
    });

  });

  $('.fund_link').on('click', function(event) {
    event.preventDefault();
    var path = $(this).attr('href');
    var request = $.ajax({
      url: path,
      type: 'get',
      dataType: "JSON"
    });

    request.done(function(fund_data) {
      $(".fund_summary").show();
      $(".fund_summary").prepend(fund_data + "<br>");
    });

  });

  $('.individual_basket').on('click', function(event) {
    event.preventDefault();
    $('#welcome').hide(1000);
    var path = $(this).attr('href');
    var request = $.ajax({
      url: path,
      type: 'get',
    });

    request.done(function(response) {
      $(".fund_summary").html(response + "<br>");
      $(".fund_summary").show(1000);
    });

  });

  $('.fund_summary').on('click', '.delete', function(event) {
    event.preventDefault();
    debugger
    var path = $(this).attr('href');
    var request = $.ajax({
      url: path,
      type: 'delete',
    })
    // Come back and do this for real
    request.done(function(response) {
      console.log("ya made it bish")
      $(".fund_summary").hide(1000);
    });

    request.fail(function() {
      console.log("ya fail");
    })
  })

});
