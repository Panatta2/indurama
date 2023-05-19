import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/alt_nav2_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamMembersClientsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for altNav_2 component.
  late AltNav2Model altNav2Model;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    altNav2Model = createModel(context, () => AltNav2Model());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    altNav2Model.dispose();
    textController?.dispose();
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
