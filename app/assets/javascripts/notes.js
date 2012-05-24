$(document).ready(function($) {
  var nextPage = 2;

  $("#more_notes").click(function () {
    $.ajax({
      url: window.location.pathname,
      type: "GET",
      data: { page: nextPage, keywords: $("#keywords").val() },
      success: function(data) {
        $("table#notes").append($(data));    
        nextPage++;
      }
    });
  });
});
