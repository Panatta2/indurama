import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getCadenasAll)] action in HomePage widget.
  ApiCallResponse? getCadenas;
  // Stores action output result for [Backend Call - API (getProcessingTypeCode)] action in HomePage widget.
  ApiCallResponse? getProcessingTypeCode;
  // Stores action output result for [Backend Call - API (getGatantia)] action in HomePage widget.
  ApiCallResponse? getGarantia;
  // Stores action output result for [Backend Call - API (getCobertura)] action in HomePage widget.
  ApiCallResponse? getCobertura;
  // Stores action output result for [Backend Call - API (getStatusTicket)] action in HomePage widget.
  ApiCallResponse? getTicketStatus;
  // Stores action output result for [Backend Call - API (getTerritorioPais)] action in HomePage widget.
  ApiCallResponse? getPais;
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
