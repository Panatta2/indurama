import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectDamageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController1;
  String? Function(BuildContext, String?)? shortBioController1Validator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController2;
  String? Function(BuildContext, String?)? shortBioController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (getProvincias)] action in DropDown widget.
  ApiCallResponse? getProvincias;
  // State field(s) for userSelect widget.
  String? userSelectValue1;
  FormFieldController<String>? userSelectValueController1;
  // State field(s) for userSelect widget.
  String? userSelectValue2;
  FormFieldController<String>? userSelectValueController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    shortBioController1?.dispose();
    shortBioController2?.dispose();
    instantTimer?.cancel();
  }

  /// Additional helper methods are added here.

}
