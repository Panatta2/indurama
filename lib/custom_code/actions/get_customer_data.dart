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

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<Map<String, dynamic>> getCustomerData(
    String numero_identificacion, String tipo_persona) async {
  var url =
      'https://api2cer.consensocorp.com/api/v1/marcimex/mod-cartera/car-customers/databook';

  var headers = <String, String>{
    'Content-Type': 'application/json',
    'Authorization': 'Basic c2FwOlpVNUhCWjdCSDMzNDkzNTY=',
    'x-api-key': 'ucDqnZEJ.m9dGCpzNMbIt2QPreiS7daENQP8dzHEF',
    'Accept': '*/*',
  };

  var body = convert.jsonEncode({
    'numero_identificacion': numero_identificacion,
    'tipo_persona': tipo_persona,
  });

  var response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    var xmlResponse = response.body;

    // toParker() is just one possible output format

    return convert.jsonDecode(xmlResponse);
  } else {
    throw Exception('Failed to load customer data');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
