 

handler = Gmaps.build('Google');

handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      "lat": 40.70791,
      "lng":  -74.006483,
      "picture": {
        "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
        "width":  36,
        "height": 36
      },
      "infowindow": "hello!"
    }
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});