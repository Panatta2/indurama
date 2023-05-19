import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetClienteOrganizacionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController1;
  String? Function(BuildContext, String?)? titleRoleController1Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController2;
  String? Function(BuildContext, String?)? titleRoleController2Validator;
  // State field(s) for titleRole widget.
  TextEditingController? titleRoleController3;
  String? Function(BuildContext, String?)? titleRoleController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userNameController?.dispose();
    emailAddressController?.dispose();
    titleRoleController1?.dispose();
    titleRoleController2?.dispose();
    titleRoleController3?.dispose();
  }

  /// Additional helper methods are added here.

}
