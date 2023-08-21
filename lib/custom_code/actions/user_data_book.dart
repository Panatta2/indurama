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

import 'package:xml2json/xml2json.dart';
import 'dart:convert';

Future<bool> userDataBook(String xmlString) async {
  final myTransformer = Xml2Json();

  try {
    myTransformer.parse(xmlString);
    print('XML parsed successfully.');
  } catch (e) {
    print('Error parsing XML: $e');
    FFAppState().update(() {
      FFAppState().userDataBook = null;
    });
    return false;
  }

  var json = myTransformer.toParker();
  print('Converted XML to JSON: $json');

  Map<String, dynamic> jsonData;
  try {
    jsonData = jsonDecode(json);
    print('JSON decoded successfully: $jsonData');
  } catch (e) {
    print('Error decoding JSON: $e');
    FFAppState().update(() {
      FFAppState().userDataBook = null;
    });
    return false;
  }

  // Verifica si existe un error en el XML
  if (jsonData.containsKey('registros') &&
      jsonData['registros'].containsKey('error')) {
    if (jsonData['registros']['error'] == 'NUT no existe' ||
        jsonData['registros']['error'] == 'Empresa incorrecta') {
      FFAppState().update(() {
        FFAppState().userDataBook = null;
      });
      return false;
    }
  }

  // Si existe socio_demografico, actualiza la variable de estado con esta información
  if (jsonData.containsKey('registros') &&
      jsonData['registros'].containsKey('socio_demografico')) {
    print('socio_demografico encontrado en el JSON');
    FFAppState().update(() {
      FFAppState().userDataBook = jsonData['registros']['socio_demografico'];
    });
    return true;
  }

  // Actualizando la variable de estado con el JSON obtenido
  FFAppState().update(() {
    FFAppState().userDataBook = jsonData;
  });
  return true;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
