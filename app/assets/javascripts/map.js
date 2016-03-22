 

// function initMap() {
//         var mapDiv = document.getElementById('map');
//         var map = new google.maps.Map(mapDiv, {
//           center: {lat: 40.70791, lng: -74.006483},
//           zoom: 8
//         });
//   }

// function initialize() {
//   var mapProp = {
//     center:new google.maps.LatLng(40.70791, -74.006483),
//     center:new google.maps.LatLng(40.708143, -74.006841),
//     zoom:5,
//     mapTypeId:google.maps.MapTypeId.ROADMAP
//   };
//   var map=new google.maps.Map(document.getElementById("map"),mapProp);


//   var marker=new google.maps.Marker({
//   position:new google.maps.LatLng(40.70791,-74.006483),
//   position:new google.maps.LatLng(40.70791,-74.006841),
//   });

//   marker.setMap(map);

// }
// google.maps.event.addDomListener(window, 'load', initialize);










// handler = Gmaps.build('Google');

// handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
//   markers = handler.addMarkers([
//     {
//       "lat": 40.70791,
//       "lng":  -74.006483,
//       "picture": {
//         "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
//         "width":  36,
//         "height": 36
//       },
//       "infowindow": "hello!"
//     }
//   ]);
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// });

// var handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
//   var markers = handler.addMarkers([
//     { lat: 40.70791, lng: -74.006483},
//     { lat: 40.708143, lng: -74.006841},
//     { lat: 40.710699, lng: -74.007254},
//     { lat: 40.710143, lng: -74.007001},
//     { lat: 40.742736, lng: -73.996969},
//     { lat: 40.707049, lng: -74.006707}
//   ]);
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// });