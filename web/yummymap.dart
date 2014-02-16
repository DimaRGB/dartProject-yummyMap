import 'dart:html';
//import 'package:js_wrapping/js_wrapping.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 15
    ..center = new LatLng(50.4500, 30.5233)
    ..mapTypeId = MapTypeId.ROADMAP
    ;  
  final map = new GMap(querySelector("#map-canvas"), mapOptions);
  
}