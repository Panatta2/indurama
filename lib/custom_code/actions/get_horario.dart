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

import 'package:xml2json/xml2json.dart'; // Import the xml2json package
import 'dart:convert'; // Import the convert library to use jsonDecode

Future<String?> getHorario(String xmlString) async {
  final transformer = Xml2Json();
  transformer.parse(xmlString);
  String jsonString = transformer.toBadgerfish();

  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print(jsonMap['soap-env:Envelope']['soap-env:Body']
          ['n0:BO_ObtenerHorarioCreateConfirmation_sync']['BO_ObtenerHorario']
      ['SAP_UUID']['\$']);
  return jsonMap['soap-env:Envelope']['soap-env:Body']
          ['n0:BO_ObtenerHorarioCreateConfirmation_sync']['BO_ObtenerHorario']
      ['SAP_UUID']['\$'];
}
