import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SelectClientOrganizacionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getUserDataBook)] action in Button widget.
  ApiCallResponse? response;
  // Stores action output result for [Custom Action - userDataBook] action in Button widget.
  bool? dataBook;
  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
