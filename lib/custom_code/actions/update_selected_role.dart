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

Future<void> updateSelectedRole(BuildContext context, String roleName) async {
  try {
    // Query Firestore to get the role document based on roleName
    final QuerySnapshot roleSnapshot = await FirebaseFirestore.instance
        .collection('roles')
        .where('nombre', isEqualTo: roleName)
        .get();

    if (roleSnapshot.docs.isNotEmpty) {
      // Update the selectedRole in FFAppState
      FFAppState().update(() {
        FFAppState().selectRole = roleSnapshot.docs.first.reference;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text('No se pudo encontrar el rol con el tipo proporcionado.'),
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
