// ignore_for_file: file_names, avoid_print
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:aquaproperties_app/models/property_model.dart';
import 'package:aquaproperties_app/models/user_model.dart';

Future<String> getFilePath() async {
  // Directory appDocumentsDirectory = await getApplicationSupportDirectory();
  final directory = await getApplicationDocumentsDirectory();
  String appDocumentsPath = directory.path;

  String filePath = '$appDocumentsPath/propertyData.txt';

  return filePath;
}

void saveFile(data) async {
  File file = File(await getFilePath());
  file.writeAsString(data);
}

Future<String> readFile() async {
  File file = File(await getFilePath());
  String fileContent = await file.readAsString();
  if(fileContent.isNotEmpty){
    return fileContent;
  } else {
    return ' ';
  }
  
}

class Services {
  static const String url =
      'https://aquaproperties.com/api/agents';

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

  static Future<List<Property>> getProperties() async {
    const String aquaPropertiesUrl =
        'https://aquaproperties.com/api/properties';

    List<Property> properties = [];
    final dataString = await readFile();
    
    if (dataString.length > 1) {
      return propertyFromJson(dataString);
    } else {
      try {
        final response = await http.get(Uri.parse(aquaPropertiesUrl));

        if (200 == response.statusCode) {
          properties = propertyFromJson(response.body);

          saveFile(response.body);

          return properties;
        } else {
          return <Property>[];
        }
      } catch (e) {
        return <Property>[];
      }
    }
  }
}
