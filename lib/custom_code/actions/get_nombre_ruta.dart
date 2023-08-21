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

Future<List<String>> getNombreRuta(dynamic territoryJson) async {
  Set<String> territories = {};

  for (var territory in territoryJson['d']['results']) {
    if (territory['HierarchyLevelCode'] == 'Z04') {
      territories.add(territory['Nombre_Territorio']);
    }
  }

  List<String> territoriesList = territories.toList();
  territoriesList.sort();

  return territoriesList;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
