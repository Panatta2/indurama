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
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    );
    _model.tabBarController2 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                wrapWithModel(
                  model: _model.mainWebNavModel,
                  updateCallback: () => setState(() {}),
                  child: MainWebNavWidget(
                    navOne: FlutterFlowTheme.of(context).info,
                    navTwo: FlutterFlowTheme.of(context).secondaryText,
                    navThree: FlutterFlowTheme.of(context).secondaryText,
                    navFour: FlutterFlowTheme.of(context).secondaryText,
                    navFive: FlutterFlowTheme.of(context).secondaryText,
                    navSix: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  desktop: false,
                                ))
                                  Image.asset(
                                    'assets/images/induramaLogo.png',
                                    height: 60.0,
                                    fit: BoxFit.contain,
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Text(
                                    'Mis Tickets',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall,
                                  ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed(
                                        'SearchTickets',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 45.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Icon(
                                        Icons.search_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.goNamed('searchProduct');
                                      },
                                      child: Container(
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          'login', context.mounted);
                                    },
                                    child: Container(
                                      width: 45.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Icon(
                                        Icons.logout,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Divider(
                          height: 44.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (FFAppState().role == 'admin')
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.74,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.0, 0),
                                          child: FlutterFlowButtonTabBar(
                                            useToggleButtonStyle: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily),
                                                    ),
                                            unselectedLabelStyle: TextStyle(),
                                            labelColor: Color(0xFF101213),
                                            unselectedLabelColor:
                                                Color(0xFF57636C),
                                            backgroundColor: Colors.white,
                                            unselectedBackgroundColor:
                                                Color(0xFFE0E3E7),
                                            borderColor: Color(0xFFE0E3E7),
                                            borderWidth: 2.0,
                                            borderRadius: 12.0,
                                            elevation: 0.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            tabs: [
                                              Tab(
                                                text: 'En Proceso',
                                              ),
                                              Tab(
                                                text: 'Finalizados',
                                              ),
                                              Tab(
                                                text: 'Objetados',
                                              ),
                                            ],
                                            controller:
                                                _model.tabBarController1,
                                            onTap: (value) => setState(() {}),
                                          ),
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller:
                                                _model.tabBarController1,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            children: [
                                              FutureBuilder<ApiCallResponse>(
                                                future: _model.progress(
                                                  requestFn: () => TicketsGroup
                                                      .getTicketAdminProgressCall
                                                      .call(
                                                    skip: '0',
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final columnGetTicketAdminProgressResponse =
                                                      snapshot.data!;
                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (getJsonField(
                                                              columnGetTicketAdminProgressResponse
                                                                  .jsonBody,
                                                              r'''$.d.results[:]''',
                                                            ) !=
                                                            null)
                                                          Builder(
                                                            builder: (context) {
                                                              final getTicketProgress =
                                                                  getJsonField(
                                                                columnGetTicketAdminProgressResponse
                                                                    .jsonBody,
                                                                r'''$.d.results''',
                                                              ).toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    getTicketProgress
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        getTicketProgressIndex) {
                                                                  final getTicketProgressItem =
                                                                      getTicketProgress[
                                                                          getTicketProgressIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: TicketDetailWidget(
                                                                                  ticketDetail: getJsonField(
                                                                                    getTicketProgressItem,
                                                                                    r'''$''',
                                                                                  ),
                                                                                  objetado: false,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 3.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(0.0, 1.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Ticket # ${getJsonField(
                                                                                  getTicketProgressItem,
                                                                                  r'''$.ID''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: Color(0xFF101213),
                                                                                      fontSize: 22.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                getJsonField(
                                                                                  getTicketProgressItem,
                                                                                  r'''$.Name''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: Color(0xFF101213),
                                                                                      fontSize: 14.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Producto: ${getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.ProductDescription''',
                                                                                      ) != null ? getJsonField(
                                                                                      getTicketProgressItem,
                                                                                      r'''$.ProductDescription''',
                                                                                    ).toString() : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Cliente: ${getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.BuyerPartyName''',
                                                                                      ) != null ? getJsonField(
                                                                                      getTicketProgressItem,
                                                                                      r'''$.BuyerPartyName''',
                                                                                    ).toString() : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Documento cliente: ${getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.NIdentificacin_KUT''',
                                                                                      ) == null ? '' : getJsonField(
                                                                                      getTicketProgressItem,
                                                                                      r'''$.NIdentificacin_KUT''',
                                                                                    ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Cadena: ${getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.Cadena_KUT''',
                                                                                      ) != null ? functions.getCadenaDescription(getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.Cadena_KUT''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().cadenas,
                                                                                        r'''$''',
                                                                                      )) : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Tipo de servicio: ${functions.getCadenaDescription(getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.ProcessingTypeCode''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().ProcessingTypeCode,
                                                                                        r'''$''',
                                                                                      ))}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Garantia: ${functions.getCadenaDescription(getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.AplicaGaranta_KUT''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().Gatantias,
                                                                                        r'''$''',
                                                                                      ))}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Fecha de compra:  ${functions.getDate(getJsonField(
                                                                                    getTicketProgressItem,
                                                                                    r'''$.Fechadecompra_KUT''',
                                                                                  ).toString())}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                      height: 35.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              getTicketProgressItem,
                                                                                              r'''$.ServiceRequestUserLifeCycleStatusCodeText''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (getJsonField(
                                                                    columnGetTicketAdminProgressResponse
                                                                        .jsonBody,
                                                                    r'''$.d.results[:]''',
                                                                  ) ==
                                                                  null)
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Lottie
                                                                          .network(
                                                                        'https://assets1.lottiefiles.com/temp/lf20_Celp8h.json',
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            130.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        repeat:
                                                                            false,
                                                                        animate:
                                                                            true,
                                                                      ),
                                                                      Text(
                                                                        'No se encontro información',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                              FutureBuilder<ApiCallResponse>(
                                                future: _model.finished(
                                                  requestFn: () => TicketsGroup
                                                      .getTicketAdminFinishCall
                                                      .call(
                                                    skip: '0',
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final columnGetTicketAdminFinishResponse =
                                                      snapshot.data!;
                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (getJsonField(
                                                              columnGetTicketAdminFinishResponse
                                                                  .jsonBody,
                                                              r'''$.d.results[:]''',
                                                            ) !=
                                                            null)
                                                          Builder(
                                                            builder: (context) {
                                                              final start =
                                                                  getJsonField(
                                                                columnGetTicketAdminFinishResponse
                                                                    .jsonBody,
                                                                r'''$.d.results''',
                                                              ).toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount: start
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        startIndex) {
                                                                  final startItem =
                                                                      start[
                                                                          startIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: TicketDetailWidget(
                                                                                  ticketDetail: getJsonField(
                                                                                    startItem,
                                                                                    r'''$''',
                                                                                  ),
                                                                                  objetado: false,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 3.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(0.0, 1.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Ticket # ${getJsonField(
                                                                                  startItem,
                                                                                  r'''$.ID''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: Color(0xFF101213),
                                                                                      fontSize: 22.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                getJsonField(
                                                                                  startItem,
                                                                                  r'''$.Name''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: Color(0xFF101213),
                                                                                      fontSize: 14.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Producto: ${getJsonField(
                                                                                        startItem,
                                                                                        r'''$.ProductDescription''',
                                                                                      ) != null ? getJsonField(
                                                                                      startItem,
                                                                                      r'''$.ProductDescription''',
                                                                                    ).toString() : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Cliente: ${getJsonField(
                                                                                        startItem,
                                                                                        r'''$.BuyerPartyName''',
                                                                                      ) != null ? getJsonField(
                                                                                      startItem,
                                                                                      r'''$.BuyerPartyName''',
                                                                                    ).toString() : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Documento cliente: ${getJsonField(
                                                                                        startItem,
                                                                                        r'''$.NIdentificacion_KUT''',
                                                                                      ) == null ? '' : getJsonField(
                                                                                      startItem,
                                                                                      r'''$.NIdentificacion_KUT''',
                                                                                    ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Cadena: ${getJsonField(
                                                                                        startItem,
                                                                                        r'''$.Cadena_KUT''',
                                                                                      ) != null ? functions.getCadenaDescription(getJsonField(
                                                                                        startItem,
                                                                                        r'''$.Cadena_KUT''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().cadenas,
                                                                                        r'''$''',
                                                                                      )) : ''}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Tipo de servicio: ${getJsonField(
                                                                                        startItem,
                                                                                        r'''$.ProcessingTypeCode''',
                                                                                      ) == null ? '' : functions.getCadenaDescription(getJsonField(
                                                                                        startItem,
                                                                                        r'''$.ProcessingTypeCode''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().ProcessingTypeCode,
                                                                                        r'''$''',
                                                                                      ))}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Garantia: ${functions.getCadenaDescription(getJsonField(
                                                                                        startItem,
                                                                                        r'''$.AplicaGaranta_KUT''',
                                                                                      ).toString(), getJsonField(
                                                                                        FFAppState().Gatantias,
                                                                                        r'''$''',
                                                                                      ))}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Fecha de compra:  ${functions.getDate(getJsonField(
                                                                                    startItem,
                                                                                    r'''$.Fechadecompra_KUT''',
                                                                                  ).toString())}',
                                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                      height: 35.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              startItem,
                                                                                              r'''$.ServiceRequestUserLifeCycleStatusCodeText''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (getJsonField(
                                                                    columnGetTicketAdminFinishResponse
                                                                        .jsonBody,
                                                                    r'''$.d.results[:]''',
                                                                  ) ==
                                                                  null)
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Lottie
                                                                          .network(
                                                                        'https://assets1.lottiefiles.com/temp/lf20_Celp8h.json',
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            130.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        repeat:
                                                                            false,
                                                                        animate:
                                                                            true,
                                                                      ),
                                                                      Text(
                                                                        'No se encontro información',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                              Visibility(
                                                visible: FFAppState().role ==
                                                    'admin',
                                                child: StreamBuilder<
                                                    List<TicketsRecord>>(
                                                  stream: queryTicketsRecord(
                                                    queryBuilder:
                                                        (ticketsRecord) =>
                                                            ticketsRecord
                                                                .orderBy(
                                                                    'ticket',
                                                                    descending:
                                                                        true),
                                                    limit: 30,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TicketsRecord>
                                                        columnTicketsRecordList =
                                                        snapshot.data!;
                                                    return SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: List.generate(
                                                            columnTicketsRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnTicketsRecord =
                                                              columnTicketsRecordList[
                                                                  columnIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        12.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        3.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                            0.0,
                                                                            1.0),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Ticket # ${columnTicketsRecord.ticket}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              _model.getTicketById = await TicketsGroup.getTicketByIdCall.call(
                                                                                ticket: 'ID eq \'${columnTicketsRecord.ticket}\'',
                                                                              );
                                                                              if ((_model.getTicketById?.succeeded ?? true)) {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return GestureDetector(
                                                                                      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: TicketDetailObjetadosWidget(
                                                                                          ticketDetail: getJsonField(
                                                                                            (_model.getTicketById?.jsonBody ?? ''),
                                                                                            r'''$.d.results[:]''',
                                                                                          ),
                                                                                          objetado: columnTicketsRecord.status == 'Objetado',
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              } else {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Error al traer el ticket',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                              }

                                                                              setState(() {});
                                                                            },
                                                                            text:
                                                                                columnTicketsRecord.status,
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 35.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: Colors.white,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (FFAppState().role != 'admin')
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.7,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.0, 0),
                                          child: FlutterFlowButtonTabBar(
                                            useToggleButtonStyle: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily),
                                                    ),
                                            unselectedLabelStyle: TextStyle(),
                                            labelColor: Color(0xFF101213),
                                            unselectedLabelColor:
                                                Color(0xFF57636C),
                                            backgroundColor: Colors.white,
                                            unselectedBackgroundColor:
                                                Color(0xFFE0E3E7),
                                            borderColor: Color(0xFFE0E3E7),
                                            borderWidth: 2.0,
                                            borderRadius: 12.0,
                                            elevation: 0.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            tabs: [
                                              Tab(
                                                text: 'En Proceso',
                                              ),
                                              Tab(
                                                text: 'Finalizados',
                                              ),
                                              Tab(
                                                text: 'Objetados',
                                              ),
                                            ],
                                            controller:
                                                _model.tabBarController2,
                                            onTap: (value) => setState(() {}),
                                          ),
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller:
                                                _model.tabBarController2,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            children: [
                                              Visibility(
                                                visible: FFAppState().role !=
                                                    'admin',
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      FutureBuilder<
                                                          ApiCallResponse>(
                                                    future:
                                                        _model.progressCadena(
                                                      requestFn: () => TicketsGroup
                                                          .getTicketsByStatusStartCall
                                                          .call(
                                                        cadena: valueOrDefault(
                                                            currentUserDocument
                                                                ?.cadena,
                                                            ''),
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnGetTicketsByStatusStartResponse =
                                                          snapshot.data!;
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final getTicketProgress =
                                                                    getJsonField(
                                                                  columnGetTicketsByStatusStartResponse
                                                                      .jsonBody,
                                                                  r'''$.d.results''',
                                                                ).toList();
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      getTicketProgress
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          getTicketProgressIndex) {
                                                                    final getTicketProgressItem =
                                                                        getTicketProgress[
                                                                            getTicketProgressIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return GestureDetector(
                                                                                onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: TicketDetailWidget(
                                                                                    ticketDetail: getJsonField(
                                                                                      getTicketProgressItem,
                                                                                      r'''$''',
                                                                                    ),
                                                                                    objetado: false,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 3.0,
                                                                                color: Color(0x33000000),
                                                                                offset: Offset(0.0, 1.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                12.0,
                                                                                12.0,
                                                                                12.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Ticket # ${getJsonField(
                                                                                    getTicketProgressItem,
                                                                                    r'''$.ID''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF101213),
                                                                                        fontSize: 22.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  getJsonField(
                                                                                    getTicketProgressItem,
                                                                                    r'''$.Name''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Color(0xFF101213),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Producto: ${getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.ProductDescription''',
                                                                                        ) != null ? getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.ProductDescription''',
                                                                                      ).toString() : ''}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Cliente: ${getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.BuyerPartyName''',
                                                                                        ) != null ? getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.BuyerPartyName''',
                                                                                      ).toString() : ''}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Documento cliente: ${getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.NIdentificacin_KUT''',
                                                                                        ) == null ? '' : getJsonField(
                                                                                        getTicketProgressItem,
                                                                                        r'''$.NIdentificacin_KUT''',
                                                                                      ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Cadena: ${getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.Cadena_KUT''',
                                                                                        ) != null ? functions.getCadenaDescription(getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.Cadena_KUT''',
                                                                                        ).toString(), getJsonField(
                                                                                          FFAppState().cadenas,
                                                                                          r'''$''',
                                                                                        )) : ''}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Garantia: ${functions.getCadenaDescription(getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.AplicaGaranta_KUT''',
                                                                                        ).toString(), getJsonField(
                                                                                          FFAppState().Gatantias,
                                                                                          r'''$''',
                                                                                        ))}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Fecha de compra:  ${functions.getDate(getJsonField(
                                                                                      getTicketProgressItem,
                                                                                      r'''$.Fechadecompra_KUT''',
                                                                                    ).toString())}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Tipo de servicio: ${functions.getCadenaDescription(getJsonField(
                                                                                          getTicketProgressItem,
                                                                                          r'''$.ProcessingTypeCode''',
                                                                                        ).toString(), getJsonField(
                                                                                          FFAppState().ProcessingTypeCode,
                                                                                          r'''$''',
                                                                                        ))}',
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                        height: 35.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            child: Text(
                                                                                              getJsonField(
                                                                                                getTicketProgressItem,
                                                                                                r'''$.ServiceRequestUserLifeCycleStatusCodeText''',
                                                                                              ).toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    fontSize: 12.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  if (getJsonField(
                                                                        columnGetTicketsByStatusStartResponse
                                                                            .jsonBody,
                                                                        r'''$.d.results[:]''',
                                                                      ) ==
                                                                      null)
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Lottie
                                                                              .network(
                                                                            'https://assets1.lottiefiles.com/temp/lf20_Celp8h.json',
                                                                            width:
                                                                                150.0,
                                                                            height:
                                                                                130.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            repeat:
                                                                                false,
                                                                            animate:
                                                                                true,
                                                                          ),
                                                                          Text(
                                                                            'No se encontro información',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Visibility(
                                                visible: FFAppState().role !=
                                                    'admin',
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      FutureBuilder<
                                                          ApiCallResponse>(
                                                    future:
                                                        _model.finishedCadena(
                                                      requestFn: () => TicketsGroup
                                                          .getTicketByStatusFinishCall
                                                          .call(
                                                        cadena: valueOrDefault(
                                                            currentUserDocument
                                                                ?.cadena,
                                                            ''),
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnGetTicketByStatusFinishResponse =
                                                          snapshot.data!;
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            if (getJsonField(
                                                                  columnGetTicketByStatusFinishResponse
                                                                      .jsonBody,
                                                                  r'''$.d.results[:]''',
                                                                ) !=
                                                                null)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final start =
                                                                      getJsonField(
                                                                    columnGetTicketByStatusFinishResponse
                                                                        .jsonBody,
                                                                    r'''$.d.results''',
                                                                  ).toList();
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount: start
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            startIndex) {
                                                                      final startItem =
                                                                          start[
                                                                              startIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return GestureDetector(
                                                                                  onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: TicketDetailWidget(
                                                                                      ticketDetail: getJsonField(
                                                                                        startItem,
                                                                                        r'''$''',
                                                                                      ),
                                                                                      objetado: false,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                setState(() {}));
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.white,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 3.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(0.0, 1.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Ticket # ${getJsonField(
                                                                                      startItem,
                                                                                      r'''$.ID''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF101213),
                                                                                          fontSize: 22.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    getJsonField(
                                                                                      startItem,
                                                                                      r'''$.Name''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Color(0xFF101213),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Producto: ${getJsonField(
                                                                                            startItem,
                                                                                            r'''$.ProductDescription''',
                                                                                          ) != null ? getJsonField(
                                                                                          startItem,
                                                                                          r'''$.ProductDescription''',
                                                                                        ).toString() : ''}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Cliente: ${getJsonField(
                                                                                            startItem,
                                                                                            r'''$.BuyerPartyName''',
                                                                                          ) != null ? getJsonField(
                                                                                          startItem,
                                                                                          r'''$.BuyerPartyName''',
                                                                                        ).toString() : ''}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Documento cliente: ${getJsonField(
                                                                                            startItem,
                                                                                            r'''$.NIdentificacion_KUT''',
                                                                                          ) == null ? '' : getJsonField(
                                                                                          startItem,
                                                                                          r'''$.NIdentificacion_KUT''',
                                                                                        ).toString()}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Cadena: ${getJsonField(
                                                                                            startItem,
                                                                                            r'''$.Cadena_KUT''',
                                                                                          ) != null ? functions.getCadenaDescription(getJsonField(
                                                                                            startItem,
                                                                                            r'''$.Cadena_KUT''',
                                                                                          ).toString(), getJsonField(
                                                                                            FFAppState().cadenas,
                                                                                            r'''$''',
                                                                                          )) : ''}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Tipo de servicio: ${getJsonField(
                                                                                            startItem,
                                                                                            r'''$.ProcessingTypeCode''',
                                                                                          ) == null ? '' : functions.getCadenaDescription(getJsonField(
                                                                                            startItem,
                                                                                            r'''$.ProcessingTypeCode''',
                                                                                          ).toString(), getJsonField(
                                                                                            FFAppState().ProcessingTypeCode,
                                                                                            r'''$''',
                                                                                          ))}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Garantia: ${functions.getCadenaDescription(getJsonField(
                                                                                            startItem,
                                                                                            r'''$.AplicaGaranta_KUT''',
                                                                                          ).toString(), getJsonField(
                                                                                            FFAppState().Gatantias,
                                                                                            r'''$''',
                                                                                          ))}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Fecha de compra:  ${functions.getDate(getJsonField(
                                                                                        startItem,
                                                                                        r'''$.Fechadecompra_KUT''',
                                                                                      ).toString())}',
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: Color(0xFF57636C),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                          height: 35.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  startItem,
                                                                                                  r'''$.ServiceRequestUserLifeCycleStatusCodeText''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      fontSize: 12.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  if (getJsonField(
                                                                        columnGetTicketByStatusFinishResponse
                                                                            .jsonBody,
                                                                        r'''$.d.results[:]''',
                                                                      ) ==
                                                                      null)
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Lottie
                                                                              .network(
                                                                            'https://assets1.lottiefiles.com/temp/lf20_Celp8h.json',
                                                                            width:
                                                                                150.0,
                                                                            height:
                                                                                130.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            repeat:
                                                                                false,
                                                                            animate:
                                                                                true,
                                                                          ),
                                                                          Text(
                                                                            'No se encontro información',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Visibility(
                                                visible: FFAppState().role !=
                                                    'admin',
                                                child: StreamBuilder<
                                                    List<TicketsRecord>>(
                                                  stream: queryTicketsRecord(
                                                    queryBuilder:
                                                        (ticketsRecord) =>
                                                            ticketsRecord
                                                                .where(
                                                                    'status',
                                                                    isEqualTo:
                                                                        'Objetado')
                                                                .orderBy(
                                                                    'ticket',
                                                                    descending:
                                                                        true),
                                                    limit: 20,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TicketsRecord>
                                                        columnTicketsRecordList =
                                                        snapshot.data!;
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          columnTicketsRecordList
                                                              .length,
                                                          (columnIndex) {
                                                        final columnTicketsRecord =
                                                            columnTicketsRecordList[
                                                                columnIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      12.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      3.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          1.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Visibility(
                                                              visible: columnTicketsRecord
                                                                      .cadena ==
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.cadena,
                                                                      ''),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        12.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Ticket # ${columnTicketsRecord.ticket}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge,
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                _model.getTicketCadena = await TicketsGroup.getTicketByIdCall.call(
                                                                                  ticket: 'ID eq \'${columnTicketsRecord.ticket}\'',
                                                                                );
                                                                                if ((_model.getTicketCadena?.succeeded ?? true)) {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return GestureDetector(
                                                                                        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: TicketDetailObjetadosWidget(
                                                                                            ticketDetail: getJsonField(
                                                                                              (_model.getTicketCadena?.jsonBody ?? ''),
                                                                                              r'''$.d.results[:]''',
                                                                                            ),
                                                                                            objetado: columnTicketsRecord.status == 'Objetado',
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Error al traer el ticket',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              text: columnTicketsRecord.status,
                                                                              options: FFButtonOptions(
                                                                                width: 170.0,
                                                                                height: 35.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                elevation: 3.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.mobileNavModel,
                        updateCallback: () => setState(() {}),
                        child: MobileNavWidget(
                          navOneIcon: Icon(
                            Icons.home_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          navTwoIcon: Icon(
                            Icons.grain,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          navThreeIcon: Icon(
                            Icons.home_repair_service_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          navFourIcon: Icon(
                            Icons.group_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          navFiveIcon: FaIcon(
                            FontAwesomeIcons.clipboardList,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 21.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
