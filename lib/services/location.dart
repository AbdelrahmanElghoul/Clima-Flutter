import 'package:geolocator/geolocator.dart' as getLocator;
class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      getLocator.Position position =
      await getLocator.getCurrentPosition(desiredAccuracy: getLocator.LocationAccuracy.low);
      latitude=position.latitude;
      longitude=position.longitude;
    } catch (e) {
      print(e);
    }
  }
}