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

class CreateIndividualPortalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (StateCode)] action in createIndividualPortal widget.
  ApiCallResponse? getStateCode;
  // Stores action output result for [Backend Call - API (TaxTypeCode)] action in createIndividualPortal widget.
  ApiCallResponse? getTaxTypeCode;
  // State field(s) for names widget.
  TextEditingController? namesController;
  String? Function(BuildContext, String?)? namesControllerValidator;
  String? _namesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario ingresar nombres y apellidos';
    }

    return null;
  }

  // State field(s) for lastname widget.
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresar correo electronico';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for cedula widget.
  TextEditingController? cedulaController;
  String? Function(BuildContext, String?)? cedulaControllerValidator;
  String? _cedulaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresar documento de identidad';
    }

    return null;
  }

  // State field(s) for Direccion widget.
  TextEditingController? direccionController;
  String? Function(BuildContext, String?)? direccionControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario ingresar el numero';
    }

    return null;
  }

  // State field(s) for cellphone widget.
  TextEditingController? cellphoneController;
  String? Function(BuildContext, String?)? cellphoneControllerValidator;
  String? _cellphoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario ingresar el numero';
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
      return 'Es necesario completar este campo';
    }

    if (val.length < 6) {
      return 'Debe ingresar 6 caracteres';
    }
    if (val.length > 6) {
      return 'Debe ingresar 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (createClientIndividual)] action in Button widget.
  ApiCallResponse? createClient;
  // Stores action output result for [Backend Call - API (getClient)] action in Button widget.
  ApiCallResponse? getClient;
  // Model for btnCancelar component.
  late BtnCancelarModel btnCancelarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    namesControllerValidator = _namesControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cedulaControllerValidator = _cedulaControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    cellphoneControllerValidator = _cellphoneControllerValidator;
    codigoPostalControllerValidator = _codigoPostalControllerValidator;
    btnCancelarModel = createModel(context, () => BtnCancelarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    namesController?.dispose();
    lastnameController?.dispose();
    emailController?.dispose();
    cedulaController?.dispose();
    direccionController?.dispose();
    phoneController?.dispose();
    cellphoneController?.dispose();
    codigoPostalController?.dispose();
    btnCancelarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
