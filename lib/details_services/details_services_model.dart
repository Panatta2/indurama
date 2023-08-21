import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsServicesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;
  // Stores action output result for [Backend Call - API (getRequerimientos)] action in Button widget.
  ApiCallResponse? getRequerimientos;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
