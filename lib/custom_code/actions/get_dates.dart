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

Future<List<String>> getDates(String xmlString) async {
  final myTransformer = Xml2Json();
  myTransformer.parse(xmlString);
  var json = myTransformer.toParker();

  Map<String, dynamic> jsonData = jsonDecode(json);

  if (jsonData.containsKey('soap-env:Envelope')) {
    if (jsonData['soap-env:Envelope'].containsKey('soap-env:Body')) {
      if (jsonData['soap-env:Envelope']['soap-env:Body']
          .containsKey('n0:BO_ObtenerHorarioReadByIDResponse_sync')) {
        if (jsonData['soap-env:Envelope']['soap-env:Body']
                ['n0:BO_ObtenerHorarioReadByIDResponse_sync']
            .containsKey('BO_ObtenerHorario')) {
          if (jsonData['soap-env:Envelope']['soap-env:Body']
                      ['n0:BO_ObtenerHorarioReadByIDResponse_sync']
                  ['BO_ObtenerHorario']
              .containsKey('HorariosDisponibles')) {
            List<String> output = [];
            List<Map<String, dynamic>> jsonOutput = [];
            List<dynamic> horariosDisponibles = jsonData['soap-env:Envelope']
                        ['soap-env:Body']
                    ['n0:BO_ObtenerHorarioReadByIDResponse_sync']
                ['BO_ObtenerHorario']['HorariosDisponibles'];

            horariosDisponibles.forEach((horario) {
              DateTime date = DateTime.parse(horario['zOutputHorarioNode']);
              jsonOutput.add({
                'SAP_UUID': horario['SAP_UUID'],
                'fecha': date // Almacenamos la fecha como objeto DateTime
              });
            });

            // Ordenando jsonOutput según las fechas
            jsonOutput.sort((a, b) => a['fecha'].compareTo(b['fecha']));

            // Convirtiendo las fechas de jsonOutput a string y añadiéndolas a output
            jsonOutput.forEach((item) {
              String date = item['fecha']
                  .toIso8601String()
                  .substring(0, 10); // Solo queremos la fecha, no la hora
              output.add(date);
              item['fecha'] = date; // Actualizando fecha en jsonOutput a cadena
            });

            // Actualizando la variable de estado con el JSON obtenido
            FFAppState().update(() {
              FFAppState().horariosDisponibles = jsonOutput;
            });

            return output;
          }
        }
      }
    }
  }

  return ['No existen horarios disponibles'];
}
