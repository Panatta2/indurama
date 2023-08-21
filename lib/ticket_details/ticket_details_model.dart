import '/backend/api_requests/api_calls.dart';
import '/components/verification_ticket_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTicketByIdUser)] action in ticketDetails widget.
  ApiCallResponse? getTicketInformation;
  // Stores action output result for [Backend Call - API (getClientIndividual)] action in ticketDetails widget.
  ApiCallResponse? getClient;
  // Stores action output result for [Backend Call - API (getClienteOrganizationTicket)] action in ticketDetails widget.
  ApiCallResponse? apiResultvdy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
