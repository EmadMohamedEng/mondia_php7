
$(document).ready(function () {
  $(".close_nav").click(function () {
    if ($('#menu_toggle').attr('aria-expanded')) {
      $('.navbar-collapse').removeClass('show')
    }
  });
});

$(document).on('click', '.back', function () {
  'use strict';
  parent.history.back();
});

$('.star').on('change', function() {
  let stars = $(this).val();
  /* Make an AJAX call to register the rating */
});

$(window).on('load', function () {
  'use strict';
  $('.loading-overlay .spinner').fadeOut(500, function () {
    $(this).parent().fadeOut(500, function () {
      $('body').css('overflow', 'auto');
      $(this).remove();
    });
  });
});

$(document).ready(function () {
  $(document).on('click', '.card-header button', function () {
    $(this).children('i').toggleClass("fa-chevron-down");
  });
});

// changes from plus to minus In Mobile View
$(document).ready(function () {
  $(document).on('click', '.card-header button', function () {
    $(this).children('i').toggleClass("fa-chevron-up");
  });
});

$('.owl_orange').owlCarousel({
  loop: true,
  margin: 0,
  autoplay: true,
  autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: true,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 1
    },
    600: {
      items: 1
    },
    1000: {
      items: 1
    },
    1024.9: {
      items: 1
    }
  }
});

$('.owl_one').owlCarousel({
  loop: true,
  margin: 0,
  autoplay: true,
  autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 1,
      dots: true
    },
    600: {
      items: 1,
      dots: true
    },
    1000: {
      items: 3,
      dots: true
    },
    1024: {
      items: 2,
      dots: true
    },
    1024.9: {
      items: 2
    }
  }
});

$('.owl_content_one').owlCarousel({
  rtl: true,
  // loop: true,
  margin: 5,
  autoplay: false,
  // autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 1
    },
    600: {
      items: 1
    },
    1000: {
      items: 1
    }
  }
});

$('.owl_content_two').owlCarousel({
  rtl: true,
  // loop: true,
  margin: 5,
  autoplay: false,
  // autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 2
    },
    600: {
      items: 2
    },
    1000: {
      items: 2
    }
  }
});

$('.owl_content_three').owlCarousel({
  rtl: true,
  // loop: true,
  margin: 5,
  autoplay: false,
  autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 2,
      loop: true,
      autoplay: true,
    },
    600: {
      items: 2,
      loop: true,
      autoplay: true,
    },
    1000: {
      items: 3
    }
  }
});

$('.owl_content_four').owlCarousel({
  rtl: true,
  loop: true,
  margin: 5,
  autoplay: true,
  autoplayTimeout: 3000,
  animateOut: 'fadeOut',
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 2
    },
    600: {
      items: 2
    },
    1000: {
      items: 4
    }
  }
});

$('.owl_content_five').owlCarousel({
  rtl: true,
  loop: true,
  margin: 5,
  autoplay: true,
  autoplayTimeout: 3000,
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 2
    },
    600: {
      items: 2
    },
    1000: {
      items: 4
    }
  }
});

$('.owl_muslim_guide').owlCarousel({
  rtl: true,
  loop: true,
  margin: 5,
  autoplay: true,
  autoplayTimeout: 3000,
  nav: false,
  dots: false,
  center: false,
  responsive: {
    0: {
      items: 2
    },
    600: {
      items: 2
    },
    768: {
      items: 3
    },
    1000: {
      items: 4
    }
  }
});

$('#Calculate').click(function () {
  var GoldPrice = $('#txtGoldPrice').val();
  var SavedMoney = $('#txtSavedMoney').val();
  var min = GoldPrice * 85;
  if (SavedMoney >= min) {
    var result = SavedMoney / 40;
    $('#result').text(result);
    $('#result_text').text(result_text);
  } else {
    $('#result').text('0');
    $('#result_text').text('الاجمالى');
  }
});

/* Start Active Menu */
$(function () {
  var url = window.location.href;

  $(".navbar_ul .nav-item a").each(function () {});
  $(".navbar_ul .nav-item a").each(function () {
    if (url == (this.href)) {
      $("#indexed").removeClass("active_menu");
      $(this).parents(".nav-item").children("a").addClass("active_menu_parent");
      $(this).closest("a").addClass("active_menu");
      $(this).parents(".nav-item").children("div").show();
    }
  });

  $(".navbar_ul_three .nav-item a").each(function () {});
  $(".navbar_ul_three .nav-item a").each(function () {
    if (url == (this.href)) {
      $("#indexed").removeClass("active_menu");
      $(this).parents(".nav-item").children("a").addClass("active_menu_parent");
      $(this).closest("a").addClass("active_menu");
      $(this).parents(".nav-item").children("div").hide();
    }
  });
});
/* End Active Menu */

$(document).ready(function () {
  $(".slide_toggle").click(function () {
    var target = $(this).parent().children(".slideContent");
    $(target).parent().siblings().children(".slideContent").slideUp(200);
    $(target).not().parent().children(".slideContent").slideToggle();
  });
});




var map;
var infowindow;
var current_lat;
var current_lng;

function initMap() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (p) {
      current_lat = p.coords.latitude;
      current_lng = p.coords.longitude;
      console.log(current_lat);
      console.log(current_lng);
      ///////
      var pyrmont = {
        lat: current_lat,
        lng: current_lng
      };
      //   var pyrmont = {lat: 30.0444196, lng: 31.2357116};
      map = new google.maps.Map(document.getElementById('map'), {
        center: pyrmont,
        zoom: 15
      });
      infowindow = new google.maps.InfoWindow();
      var service = new google.maps.places.PlacesService(map);
      service.nearbySearch({
        location: pyrmont,
        radius: 500,
        type: ['mosque']
      }, callback);
    });
  } else {
    alert('Geo Location feature is not supported in this browser.');
  }
}

function callback(results, status) {
  if (status === google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location,
  });

  google.maps.event.addListener(marker, 'click', function () {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
}
