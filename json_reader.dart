// services/json_reader.dart

import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class JsonReader {
  static Future<Map<String, dynamic>> readJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    return json.decode(jsonString);
  }
}

