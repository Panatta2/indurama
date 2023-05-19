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

Future<void> updateCadenaName(BuildContext context, String roleId) async {
  try {
    // Realiza una consulta a Firestore para obtener el documento de rol basado en roleId
    final DocumentSnapshot roleSnapshot = await FirebaseFirestore.instance
        .collection('cadenas')
        .doc(roleId)
        .get();

    if (roleSnapshot.exists) {
      // Extrae el nombre del rol del documento
      final String roleName = roleSnapshot.get('nombre') ?? '';

      // Actualiza el estado con el nombre del rol
      // Reemplaza 'FFAppState()' con el nombre de tu clase de estado si es diferente
      FFAppState().update(() {
        FFAppState().cadena = roleName;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text('No se pudo encontrar la cadena con el ID proporcionado.'),
        ),
      );
    }
  } catch (error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error.toString()),
      ),
    );
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
