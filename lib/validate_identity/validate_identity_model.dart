import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidateIdentityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - API (getClientOrganizacion)] action in Button-Login widget.
  ApiCallResponse? getClientOrganization;
  // Stores action output result for [Backend Call - API (getUserDataBook)] action in Button-Login widget.
  ApiCallResponse? responseOrganization;
  // Stores action output result for [Custom Action - userDataBook] action in Button-Login widget.
  bool? dataBookOrganization;
  // Stores action output result for [Backend Call - API (getClientIndividual)] action in Button-Login widget.
  ApiCallResponse? getClient;
  // Stores action output result for [Backend Call - API (getUserDataBook)] action in Button-Login widget.
  ApiCallResponse? response;
  // Stores action output result for [Custom Action - userDataBook] action in Button-Login widget.
  bool? dataBook;
  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    phoneNumberController?.dispose();
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
