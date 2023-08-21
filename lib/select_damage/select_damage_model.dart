import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SelectDamageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getAplicaGarantia)] action in selectDamage widget.
  ApiCallResponse? getTipoGarantia;
  // Stores action output result for [Backend Call - API (getPaises)] action in selectDamage widget.
  ApiCallResponse? getPais;
  // Stores action output result for [Backend Call - API (getCobertura)] action in selectDamage widget.
  ApiCallResponse? getCobertura;
  // Stores action output result for [Backend Call - API (getStatusTicket)] action in selectDamage widget.
  ApiCallResponse? getTicketStatus;
  // Stores action output result for [Custom Action - getIdFromTerritory] action in selectDamage widget.
  String? idPais;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (getProvincias)] action in selectDamage widget.
  ApiCallResponse? getProvincias;
  // Stores action output result for [Custom Action - getProvincesFromTerritories] action in selectDamage widget.
  List<String>? provinciasNames;
  // State field(s) for selectPais widget.
  String? selectPaisValue;
  FormFieldController<String>? selectPaisValueController;
  // State field(s) for selectProvincia widget.
  String? selectProvinciaValue;
  FormFieldController<String>? selectProvinciaValueController;
  // Stores action output result for [Backend Call - API (getNombreTerritorio)] action in selectProvincia widget.
  ApiCallResponse? getNombresTerritorio;
  // Stores action output result for [Custom Action - getTerritoryList] action in selectProvincia widget.
  List<String>? getTerritoriosList;
  // State field(s) for NombreTerritorio widget.
  String? nombreTerritorioValue;
  FormFieldController<String>? nombreTerritorioValueController;
  // Stores action output result for [Custom Action - getObjectId] action in NombreTerritorio widget.
  String? getIdTerritorio;
  // State field(s) for BarrioName widget.
  TextEditingController? barrioNameController;
  String? Function(BuildContext, String?)? barrioNameControllerValidator;
  String? _barrioNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for calle widget.
  TextEditingController? calleController;
  String? Function(BuildContext, String?)? calleControllerValidator;
  String? _calleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 40) {
      return 'Máximo 40 caracteres';
    }

    return null;
  }

  // State field(s) for referencia widget.
  TextEditingController? referenciaController;
  String? Function(BuildContext, String?)? referenciaControllerValidator;
  String? _referenciaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 40) {
      return 'Máximo 40 caracteres';
    }

    return null;
  }

  // State field(s) for Telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  String? _telefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for Movil widget.
  TextEditingController? movilController;
  String? Function(BuildContext, String?)? movilControllerValidator;
  String? _movilControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for AplicaGarantia widget.
  String? aplicaGarantiaValue;
  FormFieldController<String>? aplicaGarantiaValueController;
  // State field(s) for Tipodecobertura widget.
  String? tipodecoberturaValue;
  FormFieldController<String>? tipodecoberturaValueController;
  DateTime? datePicked;
  // State field(s) for ProductDamage widget.
  TextEditingController? productDamageController;
  String? Function(BuildContext, String?)? productDamageControllerValidator;
  String? _productDamageControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requrido';
    }

    if (val.length > 255) {
      return 'Ingresar un máximo de 255 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (createTicket)] action in Button widget.
  ApiCallResponse? createTicket;
  // Stores action output result for [Backend Call - API (createHorarioFunctions)] action in Button widget.
  ApiCallResponse? createHorarioFunctions;
  // Stores action output result for [Custom Action - getHorario] action in Button widget.
  String? getUuid;
  // Stores action output result for [Backend Call - API (readHorarioFunctions)] action in Button widget.
  ApiCallResponse? readHorarioFunciotns;
  // Stores action output result for [Custom Action - getDates] action in Button widget.
  List<String>? getDates;
  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    barrioNameControllerValidator = _barrioNameControllerValidator;
    calleControllerValidator = _calleControllerValidator;
    referenciaControllerValidator = _referenciaControllerValidator;
    telefonoControllerValidator = _telefonoControllerValidator;
    movilControllerValidator = _movilControllerValidator;
    productDamageControllerValidator = _productDamageControllerValidator;
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    barrioNameController?.dispose();
    calleController?.dispose();
    referenciaController?.dispose();
    telefonoController?.dispose();
    movilController?.dispose();
    productDamageController?.dispose();
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
