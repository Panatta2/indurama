import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/btn_cancelar_widget.dart';
import '/components/change_mobile_phone_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class SelectDateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (sendWppInformation)] action in Button widget.
  ApiCallResponse? sendWpp;
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
