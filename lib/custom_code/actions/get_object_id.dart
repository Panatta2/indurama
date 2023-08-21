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

Future<String?> getObjectId(
    dynamic territoriesJson, String selectedTerritory) async {
  var parentId;
  for (var territory in territoriesJson['d']['results']) {
    if (territory['Nombre_Territorio_Padre'] == selectedTerritory) {
      parentId = territory['ID_Territorio'].toString();
      break;
    }
  }

  if (parentId == null) {
    return null;
  }

  return parentId;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
