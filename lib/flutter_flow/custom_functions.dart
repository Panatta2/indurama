import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getDate(String date) {
  try {
    // Extract timestamp from the provided date string.
    final RegExp regExp = RegExp(r'(\d+)');
    final String timestampString = regExp.firstMatch(date)!.group(1)!;
    final int timestamp = int.parse(timestampString);

    // Create DateTime from the timestamp.
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    // Format the DateTime as a string.
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formattedDate = formatter.format(dateTime);

    return formattedDate;
  } catch (e) {
    return 'sin fecha';
  }
}

String? getProcessingTypeCode(
  String? value,
  dynamic listValues,
) {
  var roleObject = listValues['results'].firstWhere(
    (role) => role['Code'] == value,
    orElse: () => null,
  );

  // Devuelve la descripción del rol si se encontró un objeto, de lo contrario, devuelve null
  return roleObject != null ? roleObject['Description'] : null;
}

String? getCadenaDescription(
  String? code,
  dynamic cadenas,
) {
  try {
    // Comprueba si cadenas['d']['results'] es null antes de acceder a él
    if (cadenas != null &&
        cadenas['d'] != null &&
        cadenas['d']['results'] != null) {
      // Busca el objeto en la lista de roles que tenga el código proporcionado
      var roleObject = cadenas['d']['results'].firstWhere(
        (role) => role['Code'] == code,
        orElse: () => null,
      );

      // Devuelve la descripción del rol si se encontró un objeto, de lo contrario, devuelve "--"
      return roleObject != null ? roleObject['Description'] : "--";
    } else {
      // Si cadenas['d']['results'] es null, devolver "--"
      return "--";
    }
  } catch (e) {
    // Si hay un error, devolver "--"
    return "--";
  }
}

String? getCodeCadena(
  String? cadenaDescription,
  dynamic cadenas,
) {
  // Busca el objeto en la lista de roles que tenga la descripción proporcionada
  var roleObject = cadenas['d']['results'].firstWhere(
    (role) => role['Description'] == cadenaDescription,
    orElse: () => null,
  );

  // Devuelve el código del rol si se encontró un objeto, de lo contrario, devuelve null
  return roleObject != null ? roleObject['Code'] : null;
}

List<String>? dividName(String fullName) {
  print('Full Name: $fullName');
  List<String> nameParts = fullName.split(' ');

  //Inicializar con valores vacios para evitar null
  String firstName = '';
  String secondName = '';

  if (nameParts.length >= 1) {
    firstName = nameParts[0];
    print('First Name: $firstName');
  }

  if (nameParts.length >= 2) {
    secondName = nameParts[1];
    print('Surname: $secondName');
  }

  return [firstName, secondName];
}

String? getDateCreateTicket(String oldDateFormat) {
  // Reemplaza '/' con '-' para ajustar al formato que espera Dart
  oldDateFormat = oldDateFormat.replaceAll('/', '-');

  // Transforma el string de la fecha en un objeto DateTime
  DateTime date = DateTime.parse(oldDateFormat);

  // Convierte a UTC y resta 5 horas
  date = date.toUtc().subtract(Duration(hours: 5));

  // Usa DateFormat para formatear la fecha
  String newDateFormat =
      DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'").format(date);

  return newDateFormat;
}

String? getDateGarantia(String oldDateFormat) {
  // Asegurarse de que la fecha esté en el formato correcto
  List<String> dateParts = oldDateFormat.split('/');
  if (dateParts.length != 3) {
    print("Formato de fecha incorrecto: $oldDateFormat");
    return null;
  }

  String day = dateParts[0].padLeft(2, '0');
  String month = dateParts[1].padLeft(2, '0');
  String year = dateParts[2];

  oldDateFormat = "$year-$month-$day";

  // Agrega el tiempo por defecto si no está presente
  oldDateFormat += " 00:00:00";

  // Transforma el string de la fecha en un objeto DateTime
  DateTime date = DateTime.parse(oldDateFormat);

  // Convierte a UTC y resta 5 horas
  date = date.toUtc().subtract(Duration(hours: 5));

  // Usa DateFormat para formatear la fecha
  String newDateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(date);

  return newDateFormat;
}

int? addElementList(List<int>? formFieldCount) {
  return (formFieldCount!.last + 1);
}

int? removeElementList(List<int>? list) {
  return list!.last;
}

int? addEelementValue(
  List<int> listCode,
  int index,
) {
  print(listCode.last);
  print(index);
  for (int i = 0; i < index; i++) {
    listCode.add(listCode.last + 1);
  }

  return listCode.last;
}

String? dateFormat(String date) {
  DateFormat inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  DateFormat outputFormat = DateFormat("dd-MM-yyyy");
  DateTime dateTime = inputFormat.parseUtc(date);
  String outputDate = outputFormat.format(dateTime);
  return outputDate;
}

List<String> dividNameDataBook(String fullName) {
  print('Full Name: $fullName');
  List<String> nameParts = fullName.split(' ');

  // Inicializar con valores vacíos para evitar null
  String firstNames = '';
  String lastNames = '';

  if (nameParts.length >= 2) {
    lastNames = nameParts[0] + ' ' + nameParts[1];
  }

  if (nameParts.length >= 4) {
    firstNames = nameParts[2] + ' ' + nameParts[3];
  }

  return [firstNames, lastNames];
}
