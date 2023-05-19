import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
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

String? getCadena(
  String? cadena,
  dynamic cadenas,
) {
  // Busca el objeto en la lista de roles que tenga el código proporcionado
  var roleObject = cadenas['d']['results'].firstWhere(
    (role) => role['Code'] == cadena,
    orElse: () => null,
  );

  // Devuelve la descripción del rol si se encontró un objeto, de lo contrario, devuelve null
  return roleObject != null ? roleObject['Description'] : null;
}
