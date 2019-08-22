$(document).ready(function () {
  var albums = $('#albums');
  albums.lightGallery({
    download: false,
    selector: '.item'
  });
  $('sidebar .month').click(function () {
    console.log($(this).attr('href'));
    // $(albums).animate({
    //   scrollTop: $('#2019-Januar').offset().top - $('#albums').offset()
    // }, 300);
  });
});

