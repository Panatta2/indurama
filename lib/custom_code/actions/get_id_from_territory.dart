// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> getIdFromTerritory(
    dynamic territoriesJson, String selectedTerritory) async {
  for (var territory in territoriesJson['d']['results']) {
    if (territory['Nombre_Territorio'] == selectedTerritory) {
      return territory['ID_Territorio'].toString();
    }
  }
  return null;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
