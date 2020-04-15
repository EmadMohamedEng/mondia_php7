$(document).ready(function() {
    $(".close_nav").click(function() {
        if ($('#menu_toggle').attr('aria-expanded')) {
            $('.navbar-collapse').removeClass('show')
        }
    });
});

$(document).on('click', '.back', function() {
    'use strict';
    parent.history.back();
});

$(window).on('load', function() {
    'use strict';
    $('.loading-overlay .spinner').fadeOut(500, function() {
        $(this).parent().fadeOut(800, function() {
            $('body').css('overflow', 'auto');
            $(this).remove();
        });
    });
});

$('.owl_one').owlCarousel({
    loop: true,
    margin: 0,
    autoplay: true,
    autoplayTimeout: 3000,
    animateOut: 'fadeOut',
    nav: false,
    dots: true,
    center: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 3
        }
    }
});

$('.owl_content').owlCarousel({
    loop: true,
    margin: 5,
    autoplay: true,
    autoplayTimeout: 3000,
    animateOut: 'fadeOut',
    nav: false,
    dots: false,
    center: true,
    responsive: {
        0: {
            items: 3
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
});

$('.owl_content_one').owlCarousel({
    loop: false,
    margin: 5,
    autoplay: false,
    autoplayTimeout: 3000,
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
    loop: false,
    margin: 5,
    autoplay: false,
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
            items: 2
        }
    }
});

$('#Calculate').click(function() {
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
$(function() {
    var url = window.location.href;

    $(".navbar_ul .nav-item a").each(function() {});
    $(".navbar_ul .nav-item a").each(function() {
        if (url == (this.href)) {
            $("#indexed").removeClass("active_menu");
            $(this).parents(".nav-item").children("a").addClass("active_menu_parent");
            $(this).closest("a").addClass("active_menu");
            $(this).parents(".nav-item").children("div").show();
        }
    });
});
/* End Active Menu */

$(document).ready(function() {
    $(".slide_toggle").click(function() {
        var target = $(this).parent().children(".slideContent");
        $(target).parent().siblings().children(".slideContent").slideUp(200);
        $(target).not().parent().children(".slideContent").slideToggle();
    });
});

setTimeout(function() {
    $('#sebhaModal').modal('show')
}, 1000);


var tallyDisplay = document.getElementById('tally');
var globalTally = 0;

tallyDisplay.innerHTML = globalTally;

document.addEventListener('keyup', function(event) {
    if (event.which === 32) {
        globalTally++;
        tallyDisplay.innerHTML = globalTally;
    }
});

document.getElementById('plusBtn').addEventListener('click', function(event) {
    globalTally++;
    tallyDisplay.innerHTML = globalTally;
});

document.getElementById('resetBtn').addEventListener('click', function(event) {
    globalTally = 0;
    tallyDisplay.innerHTML = globalTally;
    $("#wordSebha").empty();
});


function getValue(value) {
    $("#wordSebha").append(value);
}


var map;
var infowindow;
var current_lat;
var current_lng;

function initMap() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(p) {
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

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name);
        infowindow.open(map, this);
    });
}