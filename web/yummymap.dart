library yummymap;

import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:angular/angular.dart';

@NgController(
  selector: '[city-ctrl]'
)
class CityController extends NgController {

  CityController() {
    final mapOptions = new MapOptions()
      ..zoom = 15
      ..center = new LatLng(50.4500, 30.5233)
      ..mapTypeId = MapTypeId.ROADMAP
    ;
    final map = new GMap(querySelector('#map-canvas'), mapOptions);
  }

}

class YummymapModule extends Module {
	YummymapModule() {
		type(CityController);
	}
}

main() => ngBootstrap(module: new YummymapModule());
