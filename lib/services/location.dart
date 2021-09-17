import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude, longitude;

  Location();

  getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      print("$longitude - $longitude");
    } catch (e) {
      print(e);
    }
  }
}
