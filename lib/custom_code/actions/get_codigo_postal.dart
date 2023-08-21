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

Future<String?> getCodigoPostal(dynamic json, String? cantonSeleccionado,
    String parroquiaSeleccionada) async {
  for (var canton in json['data']) {
    if (canton['canton'] == cantonSeleccionado) {
      for (var parroquia in canton['parroquias']) {
        if (parroquia['parroquia'] == parroquiaSeleccionada) {
          // Asegurándose de que el código postal es un String.
          String codigoPostal = parroquia['codigoPostal'].toString();
          // Agregando un "0" al inicio si la longitud es 5.
          if (codigoPostal.length == 5) {
            codigoPostal = "0" + codigoPostal;
          }
          return codigoPostal;
        }
      }
    }
  }

  return null;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
