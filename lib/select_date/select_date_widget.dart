import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/btn_cancelar_widget.dart';
import '/components/change_mobile_phone_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'select_date_model.dart';
export 'select_date_model.dart';

class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({
    Key? key,
    required this.ticketInformation,
  }) : super(key: key);

  final dynamic ticketInformation;

  @override
  _SelectDateWidgetState createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  late SelectDateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDateModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Seleccionar disponibilidad',
            style: FlutterFlowTheme.of(context).headlineSmall,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
              child: wrapWithModel(
                model: _model.btnCancelarModel,
                updateCallback: () => setState(() {}),
                child: BtnCancelarWidget(),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 1.0,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      lineHeight: 12.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).secondary,
                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                      barRadius: Radius.circular(0.0),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Fecha',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 17.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Selección',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 17.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (getJsonField(
                        FFAppState().horariosDisponibles,
                        r'''$''',
                      ) !=
                      null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final getDates = getJsonField(
                            FFAppState().horariosDisponibles,
                            r'''$''',
                          ).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: getDates.length,
                            itemBuilder: (context, getDatesIndex) {
                              final getDatesItem = getDates[getDatesIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: Container(
                                  width: 100.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getJsonField(
                                            getDatesItem,
                                            r'''$.fecha''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().fechaSap ==
                                                getJsonField(
                                                  getDatesItem,
                                                  r'''$.SAP_UUID''',
                                                ))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .fechaSeleccionada =
                                                        null;
                                                    FFAppState().fechaSap = '';
                                                  });
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.checkCircle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            if (getJsonField(
                                                  getDatesItem,
                                                  r'''$.SAP_UUID''',
                                                ) !=
                                                FFAppState().fechaSap)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .fechaSeleccionada =
                                                        getJsonField(
                                                      getDatesItem,
                                                      r'''$''',
                                                    );
                                                    FFAppState().fechaSap =
                                                        getJsonField(
                                                      getDatesItem,
                                                      r'''$.SAP_UUID''',
                                                    ).toString();
                                                  });
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.circle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  if (getJsonField(
                        FFAppState().horariosDisponibles,
                        r'''$''',
                      ) ==
                      null)
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Lottie.network(
                              'https://assets10.lottiefiles.com/packages/lf20_aBYmBC.json',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                              reverse: true,
                              animate: true,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Por el momento no hay horarios disponibles',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (getJsonField(
                        FFAppState().horariosDisponibles,
                        r'''$''',
                      ) !=
                      null)
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;

                            await TicketsRecord.collection
                                .doc()
                                .set(createTicketsRecordData(
                                  ticket: getJsonField(
                                    widget.ticketInformation,
                                    r'''$.d.results.ID''',
                                  ).toString(),
                                  status: 'Esperando confirmación',
                                  fechaDisponible: functions
                                      .getDateCreateTicket(getJsonField(
                                    FFAppState().fechaSeleccionada,
                                    r'''$.fecha''',
                                  ).toString()),
                                  cadena: valueOrDefault(
                                      currentUserDocument?.cadena, ''),
                                ));
                            if (getJsonField(
                                  widget.ticketInformation,
                                  r'''$.d.results.Mvil_KUT''',
                                ) ==
                                null) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Numero no encontrado'),
                                    content: Text(
                                        'Parece que no existe un numero registrado'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Agregar numero '),
                                      ),
                                    ],
                                  );
                                },
                              );
                              await showAlignedDialog(
                                context: context,
                                isGlobal: true,
                                avoidOverflow: false,
                                targetAnchor: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                followerAnchor: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                builder: (dialogContext) {
                                  return Material(
                                    color: Colors.transparent,
                                    child: GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: ChangeMobilePhoneWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));

                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                Text('Verificar información'),
                                            content: Text(
                                                'Su numero registrado es:  ${getJsonField(
                                              widget.ticketInformation,
                                              r'''$.d.results.Mvil_KUT''',
                                            ).toString()}  Desea que se envie la información de aprobación al mismo numero?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cambiar numero'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirmar'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                if (getJsonField(
                                      widget.ticketInformation,
                                      r'''$.d.results.Mvil_KUT''',
                                    ) ==
                                    null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Es necesario definir el numero',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  _model.sendWpp =
                                      await SendWppInformationCall.call(
                                    number: getJsonField(
                                      widget.ticketInformation,
                                      r'''$.d.results.Mvil_KUT''',
                                    ).toString(),
                                    firstName: getJsonField(
                                              FFAppState().userIndurama,
                                              r'''$.FirstName''',
                                            ) ==
                                            null
                                        ? getJsonField(
                                            FFAppState().userIndurama,
                                            r'''$.Name''',
                                          ).toString()
                                        : getJsonField(
                                            FFAppState().userIndurama,
                                            r'''$.FirstName''',
                                          ).toString(),
                                    deepLink:
                                        'https://indurama.flutterflow.app/confirm/${getJsonField(
                                      FFAppState().ticketCreateResponse,
                                      r'''$.d.results.ID''',
                                    ).toString()}',
                                    lastName: getJsonField(
                                              FFAppState().userIndurama,
                                              r'''$.LastName''',
                                            ) ==
                                            null
                                        ? ''
                                        : getJsonField(
                                            FFAppState().userIndurama,
                                            r'''$.LastName''',
                                          ).toString(),
                                    uniqueId: getJsonField(
                                      FFAppState().userIndurama,
                                      r'''$.ExternalID''',
                                    ).toString(),
                                    email: getJsonField(
                                      FFAppState().userIndurama,
                                      r'''$.Email''',
                                    ).toString(),
                                    phone: getJsonField(
                                      FFAppState().userIndurama,
                                      r'''$.Mobile''',
                                    ).toString(),
                                    ticketId: getJsonField(
                                      FFAppState().ticketCreateResponse,
                                      r'''$.d.results.ID''',
                                    ).toString(),
                                  );
                                  _shouldSetState = true;
                                  if ((_model.sendWpp?.succeeded ?? true)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Se envio la informacion al cliente',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );

                                    context.pushNamed(
                                      'SuccessTicketIndurama',
                                      queryParameters: {
                                        'ticket': serializeParam(
                                          getJsonField(
                                            FFAppState().ticketCreateResponse,
                                            r'''$.d.results.ID''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                              } else {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: true,
                                  avoidOverflow: false,
                                  targetAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: GestureDetector(
                                        onTap: () => FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode),
                                        child: ChangeMobilePhoneWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: 'Seleccionar Fecha',
                          options: FFButtonOptions(
                            width: 170.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  if (getJsonField(
                        FFAppState().horariosDisponibles,
                        r'''$''',
                      ) ==
                      null)
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Ir al inicio',
                      options: FFButtonOptions(
                        width: 170.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
