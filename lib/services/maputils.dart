import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(String latitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
