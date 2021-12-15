// ignore_for_file: file_names

import 'package:aquaproperties_app/models/property_model.dart';
import 'package:aquaproperties_app/models/user_model.dart';

import 'package:http/http.dart' as http;

class Services {
  static const String url =
      'https://api.rexcrm.com/users/feed/usersInJson?api_key=YHAHALMIMSABDJAD';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (200 == response.statusCode) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return <User>[];
      }
    } catch (e) {
      return <User>[];
    }
  }

  static const String aquaPropertiesUrl =
      'https://aquaproperties.com/api/properties';

  static Future<List<Property>> getProperties() async {
    try {
      final response = await http.get(Uri.parse(aquaPropertiesUrl));
      if (200 == response.statusCode) {
        final List<Property> properties = propertyFromJson(response.body);

        return properties;
      } else {
        return <Property>[];
      }
    } catch (e) {
      return <Property>[];
    }
  }
}
