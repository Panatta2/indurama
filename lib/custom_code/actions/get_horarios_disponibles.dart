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

Future<String> getHorariosDisponibles(String xmlString) async {
  final transformer = Xml2Json();
  transformer.parse(xmlString);
  String jsonString = transformer.toParker();

  Map<String, dynamic> jsonMap = jsonDecode(jsonString);

  if (jsonMap['Envelope']['Body']['BO_ObtenerHorarioReadByIDResponse_sync']
          ['BO_ObtenerHorario']['HorariosDisponibles'] ==
      null) {
    return jsonEncode({"HorariosDisponibles": []});
  }

  List horariosDisponibles = jsonMap['Envelope']['Body']
          ['BO_ObtenerHorarioReadByIDResponse_sync']['BO_ObtenerHorario']
      ['HorariosDisponibles'];

  List<Map<String, dynamic>> simplifiedJsonList =
      horariosDisponibles.map((horario) {
    return {
      'SAP_UUID': horario['SAP_UUID'].toString(),
      'zOutputHorarioNode': horario['zOutputHorarioNode'].toString()
    };
  }).toList();
  print(jsonEncode({"HorariosDisponibles": simplifiedJsonList}));
  return jsonEncode({"HorariosDisponibles": simplifiedJsonList});
}
