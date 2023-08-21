import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/components/ticket_detail_objetados_widget.dart';
import '/components/ticket_detail_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Stores action output result for [Backend Call - API (getTicketById)] action in Button widget.
  ApiCallResponse? getTicketById;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Stores action output result for [Backend Call - API (getTicketById)] action in Button widget.
  ApiCallResponse? getTicketCadena;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Query cache managers for this widget.

  final _progressManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> progress({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _progressManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProgressCache() => _progressManager.clear();
  void clearProgressCacheKey(String? uniqueKey) =>
      _progressManager.clearRequest(uniqueKey);

  final _finishedManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> finished({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _finishedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFinishedCache() => _finishedManager.clear();
  void clearFinishedCacheKey(String? uniqueKey) =>
      _finishedManager.clearRequest(uniqueKey);

  final _progressCadenaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> progressCadena({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _progressCadenaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProgressCadenaCache() => _progressCadenaManager.clear();
  void clearProgressCadenaCacheKey(String? uniqueKey) =>
      _progressCadenaManager.clearRequest(uniqueKey);

  final _finishedCadenaManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> finishedCadena({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _finishedCadenaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFinishedCadenaCache() => _finishedCadenaManager.clear();
  void clearFinishedCadenaCacheKey(String? uniqueKey) =>
      _finishedCadenaManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavModel.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    mobileNavModel.dispose();

    /// Dispose query cache managers for this widget.

    clearProgressCache();

    clearFinishedCache();

    clearProgressCadenaCache();

    clearFinishedCadenaCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
