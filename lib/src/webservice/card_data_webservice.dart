import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:landing_grid/src/model/card_data_model.dart';

class CardDataWebService {
  Future<List<CardDataModel>?> fetchData() async {
    try {
      final jsonString = await _loadJsonData();
      final Map decoded = jsonDecode(jsonString);
      final List result = decoded["result"];
      final data = result.map((e) => CardDataModel.fromMap(e)).toList();
      return data;
    } catch (e) {
      return null;
    }
  }

  Future<String> _loadJsonData() async {
    // Load the JSON file
    String jsonString = await rootBundle.loadString('assets/local_data.json');
    return jsonString;
  }
}
