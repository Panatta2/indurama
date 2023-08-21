import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateOrganizationPortalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (StateCode)] action in createOrganizationPortal widget.
  ApiCallResponse? getStateCode;
  // Stores action output result for [Backend Call - API (TaxTypeCode)] action in createOrganizationPortal widget.
  ApiCallResponse? getTaxTypeCode;
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  String? _userNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    return null;
  }

  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    return null;
  }

  // State field(s) for cedula widget.
  TextEditingController? cedulaController;
  String? Function(BuildContext, String?)? cedulaControllerValidator;
  String? _cedulaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (val.length < 13) {
      return 'Debe ingresar un RUC valido';
    }
    if (val.length > 13) {
      return 'Debe ingresar un RUC valido';
    }

    return null;
  }

  // State field(s) for Direccion widget.
  TextEditingController? direccionController;
  String? Function(BuildContext, String?)? direccionControllerValidator;
  String? _direccionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (val.length > 60) {
      return 'Debe ingreso un máximo de 60 caracteres';
    }

    return null;
  }

  // State field(s) for seleccionarProvincia widget.
  String? seleccionarProvinciaValue;
  FormFieldController<String>? seleccionarProvinciaValueController;
  // Stores action output result for [Backend Call - API (getCantonesCodigos)] action in seleccionarProvincia widget.
  ApiCallResponse? getCantones;
  // State field(s) for seleccionarCanton widget.
  String? seleccionarCantonValue;
  FormFieldController<String>? seleccionarCantonValueController;
  // Stores action output result for [Custom Action - getParroquiaList] action in seleccionarCanton widget.
  List<String>? getParroquias;
  // State field(s) for seleccionarParroquias widget.
  String? seleccionarParroquiasValue;
  FormFieldController<String>? seleccionarParroquiasValueController;
  // Stores action output result for [Custom Action - getCodigoPostal] action in seleccionarParroquias widget.
  String? getPostalCode;
  // State field(s) for codigoPostal widget.
  TextEditingController? codigoPostalController;
  String? Function(BuildContext, String?)? codigoPostalControllerValidator;
  String? _codigoPostalControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (createOrganizationClient)] action in Button widget.
  ApiCallResponse? createOrganization;
  // Stores action output result for [Backend Call - API (getClientOrganizacion)] action in Button widget.
  ApiCallResponse? getOrganization;
  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userNameControllerValidator = _userNameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cedulaControllerValidator = _cedulaControllerValidator;
    direccionControllerValidator = _direccionControllerValidator;
    codigoPostalControllerValidator = _codigoPostalControllerValidator;
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userNameController?.dispose();
    emailController?.dispose();
    cedulaController?.dispose();
    direccionController?.dispose();
    codigoPostalController?.dispose();
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
