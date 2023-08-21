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

Future<List<String>?> getCantones(
    dynamic json, String cantonSeleccionado) async {
  for (var canton in json['data']) {
    if (canton['canton'] == cantonSeleccionado) {
      List<String> parroquias = [];
      for (var parroquia in canton['parroquias']) {
        parroquias.add(parroquia['parroquia']);
      }
      return parroquias;
    }
  }

  return null;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
