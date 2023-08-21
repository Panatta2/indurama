import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/code_product_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateRequerimentsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  InstantTimer? instantTimer;
  // State field(s) for categoria widget.
  TextEditingController? categoriaController;
  String? Function(BuildContext, String?)? categoriaControllerValidator;
  // State field(s) for codigoCategoria widget.
  TextEditingController? codigoCategoriaController;
  String? Function(BuildContext, String?)? codigoCategoriaControllerValidator;
  // State field(s) for producto widget.
  TextEditingController? productoController;
  String? Function(BuildContext, String?)? productoControllerValidator;
  // Models for CodeProduct dynamic component.
  late FlutterFlowDynamicModels<CodeProductModel> codeProductModels;
  // State field(s) for modelo widget.
  TextEditingController? modeloController;
  String? Function(BuildContext, String?)? modeloControllerValidator;
  // State field(s) for Marca widget.
  TextEditingController? marcaController;
  String? Function(BuildContext, String?)? marcaControllerValidator;
  // State field(s) for garantiaGeneral widget.
  TextEditingController? garantiaGeneralController;
  String? Function(BuildContext, String?)? garantiaGeneralControllerValidator;
  // State field(s) for instalacionGratuita widget.
  TextEditingController? instalacionGratuitaController;
  String? Function(BuildContext, String?)?
      instalacionGratuitaControllerValidator;
  // State field(s) for requerimientosBasicos widget.
  TextEditingController? requerimientosBasicosController;
  String? Function(BuildContext, String?)?
      requerimientosBasicosControllerValidator;
  // State field(s) for Atencionendomiciolo widget.
  TextEditingController? atencionendomicioloController;
  String? Function(BuildContext, String?)?
      atencionendomicioloControllerValidator;
  // State field(s) for PrestamoProducto widget.
  TextEditingController? prestamoProductoController;
  String? Function(BuildContext, String?)? prestamoProductoControllerValidator;
  // State field(s) for otrosServicios widget.
  TextEditingController? otrosServiciosController;
  String? Function(BuildContext, String?)? otrosServiciosControllerValidator;
  // State field(s) for restricciones widget.
  TextEditingController? restriccionesController;
  String? Function(BuildContext, String?)? restriccionesControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RequerimientosInstalacionRecord? saveRequerimientos;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    codeProductModels = FlutterFlowDynamicModels(() => CodeProductModel());
  }

  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    categoriaController?.dispose();
    codigoCategoriaController?.dispose();
    productoController?.dispose();
    codeProductModels.dispose();
    modeloController?.dispose();
    marcaController?.dispose();
    garantiaGeneralController?.dispose();
    instalacionGratuitaController?.dispose();
    requerimientosBasicosController?.dispose();
    atencionendomicioloController?.dispose();
    prestamoProductoController?.dispose();
    otrosServiciosController?.dispose();
    restriccionesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
