$(document).ready(function () {
  var albums = $('#albums');

  albums.lightGallery({
    download: false,
    selector: '.item',
    speed: 350
  });

  $('sidebar .month').click(function () {
    var scrollTo = $('#' + $(this).attr('href'));
    $(albums).scrollTo(scrollTo, 300);
  });

  $('#mobile-sidebar-opener').click(function () {
    $('sidebar.sidebar').toggleClass('sidebar-open');
  });

  const observer = lozad('.lozad', {
    loaded: function (el) {
      el.classList.add('animated'); 
      el.classList.add('fadeInUp'); 
    }
  });
  observer.observe();
});

