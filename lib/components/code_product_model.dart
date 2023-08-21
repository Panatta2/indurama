import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CodeProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for codigoCategoria widget.
  TextEditingController? codigoCategoriaController;
  String? Function(BuildContext, String?)? codigoCategoriaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    codigoCategoriaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
