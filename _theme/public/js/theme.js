$(document).ready(function () {
  var albums = $('#albums');
  albums.lightGallery({
    download: false,
    selector: '.item'
  });
  $('sidebar').click(function () {
    $(albums).animate({
      scrollTop: $('#2019-Januar').offset().top - $('#albums').offset()
    }, 300);
  });
});

