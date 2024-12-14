$(function () {
  $(".post-like").on("click", function () {
    console.log("click");
    var post_id = $(this).data("id");

    $.ajax({
      url: "post/like/" + post_id,
      method: "GET",
    }).done(function (response) {
      console.log(response);
    });
  });
});
