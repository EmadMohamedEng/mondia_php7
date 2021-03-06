@extends('front.master')
@section('page_title') @lang('front.mosque') @endsection
@section('content')

@if(request()->get('OpID') == mbc  || request()->get('OpID') == orange)
<div class="col-md-12 col-lg-12 col-xl-12 col-12 padding_phones no_padding close_nav">
@else
<div class="col-md-12 col-lg-12 col-xl-8 col-12 padding_phones no_padding close_nav">
@endif
    @include('front.search')
  <section class="nearmosque_page">
    <div class="nearmosque_title text-center">
      <h2 class="text-capitalize">@lang('front.mosque')</h2>
      <div id="map" style="position: relative; overflow: hidden;"></div>
    </div>
  </section>

</div>

<!-- <script>
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
</script> -->

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCkPbH3-wDpLOsruf4eBsae2q3xnb6153s&libraries=places&callback=initMap&language=ar" async defer></script>

@stop
