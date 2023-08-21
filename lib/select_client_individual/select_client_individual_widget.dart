import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'select_client_individual_model.dart';
export 'select_client_individual_model.dart';

class SelectClientIndividualWidget extends StatefulWidget {
  const SelectClientIndividualWidget({
    Key? key,
    required this.clients,
    required this.client,
    required this.cedula,
  }) : super(key: key);

  final dynamic clients;
  final bool? client;
  final String? cedula;

  @override
  _SelectClientIndividualWidgetState createState() =>
      _SelectClientIndividualWidgetState();
}

class _SelectClientIndividualWidgetState
    extends State<SelectClientIndividualWidget> {
  late SelectClientIndividualModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectClientIndividualModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().usuarioSeleccionado = getJsonField(
          widget.clients,
          r'''$.d.results[0]''',
        );
        FFAppState().userCedula = getJsonField(
          widget.clients,
          r'''$.d.results[0].CustomerID''',
        ).toString().toString();
      });
    });

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
            'Seleccionar cliente',
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
                      backgroundColor: Color(0xFFE0E3E7),
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
                              'Lista de información de usuario',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: Text(
                            '#',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Seleccionar',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final users = getJsonField(
                          widget.clients,
                          r'''$.d.results''',
                        ).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: users.length,
                          itemBuilder: (context, usersIndex) {
                            final usersItem = users[usersIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (widget.client == true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '${getJsonField(
                                                        usersItem,
                                                        r'''$.FirstName''',
                                                      ).toString()} ${getJsonField(
                                                        usersItem,
                                                        r'''$.MiddleName''',
                                                      ).toString()} ${getJsonField(
                                                        usersItem,
                                                        r'''$.LastName''',
                                                      ).toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  'CustomerID: ${getJsonField(
                                                    usersItem,
                                                    r'''$.CustomerID''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Documento Identificación: ${getJsonField(
                                                    usersItem,
                                                    r'''$.NIdentificacin_KUT''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Telefono: ${getJsonField(
                                                    usersItem,
                                                    r'''$.Phone''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Celular:  ${getJsonField(
                                                    usersItem,
                                                    r'''$.Mobile''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Correo: ${getJsonField(
                                                    usersItem,
                                                    r'''$.Email''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Dirección Factura: ${getJsonField(
                                                    usersItem,
                                                    r'''$.Street''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'Provincia: ${getJsonField(
                                                    usersItem,
                                                    r'''$.StateCodeText''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  'País: ${getJsonField(
                                                    usersItem,
                                                    r'''$.CountryCodeText''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (widget.client == false)
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 0.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          usersItem,
                                                          r'''$.Name''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Telefono: ${getJsonField(
                                                      usersItem,
                                                      r'''$.Phone''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Text(
                                                    'Celular:  ${getJsonField(
                                                      usersItem,
                                                      r'''$.Mobile''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Text(
                                                    'Correo: ${getJsonField(
                                                      usersItem,
                                                      r'''$.Email''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Text(
                                                      'Dirección Factura: ${getJsonField(
                                                        usersItem,
                                                        r'''$.Street''',
                                                      ).toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Provincia: ${getJsonField(
                                                      usersItem,
                                                      r'''$.StateCodeText''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Text(
                                                    'País: ${getJsonField(
                                                      usersItem,
                                                      r'''$.CountryCodeText''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (FFAppState().userCedula !=
                                                  getJsonField(
                                                    usersItem,
                                                    r'''$.CustomerID''',
                                                  ))
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .usuarioSeleccionado =
                                                          getJsonField(
                                                        usersItem,
                                                        r'''$''',
                                                      );
                                                      FFAppState().userCedula =
                                                          getJsonField(
                                                        usersItem,
                                                        r'''$.CustomerID''',
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
                                              if (getJsonField(
                                                    usersItem,
                                                    r'''$.CustomerID''',
                                                  ) ==
                                                  FFAppState().userCedula)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .usuarioSeleccionado =
                                                          null;
                                                      FFAppState().userCedula =
                                                          '';
                                                    });
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCheckCircle,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
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
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (false)
                          FFButtonWidget(
                            onPressed: () async {
                              _model.response = await GetUserDataBookCall.call(
                                numeroIdentificacion: widget.cedula,
                                tipoPersona: 'TIT',
                              );
                              _model.dataBook = await actions.userDataBook(
                                getJsonField(
                                  (_model.response?.jsonBody ?? ''),
                                  r'''$.data''',
                                ).toString(),
                              );
                              if (_model.dataBook!) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Completar informacion'),
                                      content: Text(
                                          'Es necesario completar la informacion para crear un ticket'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );

                                context.pushNamed(
                                  'createIndividualPortal',
                                  queryParameters: {
                                    'userDataBook': serializeParam(
                                      getJsonField(
                                        FFAppState().userDataBook,
                                        r'''$''',
                                      ),
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Cliente no encontrado'),
                                      content:
                                          Text('Es necesario crear al cliente'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );

                                context.pushNamed(
                                  'createIndividualPortal',
                                  queryParameters: {
                                    'userDataBook': serializeParam(
                                      null,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              }

                              setState(() {});
                            },
                            text: 'Crear nuevo cliente',
                            options: FFButtonOptions(
                              height: 45.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
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
                                        .containsKey(
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
                        FFButtonWidget(
                          onPressed: () async {
                            if (getJsonField(
                                  FFAppState().usuarioSeleccionado,
                                  r'''$''',
                                ) !=
                                null) {
                              if (widget.client!) {
                                context.pushNamed(
                                  'selectDamage',
                                  queryParameters: {
                                    'user': serializeParam(
                                      FFAppState().usuarioSeleccionado,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );

                                setState(() {
                                  FFAppState().userIndurama = getJsonField(
                                    FFAppState().usuarioSeleccionado,
                                    r'''$''',
                                  );
                                });
                              } else {
                                context.pushNamed(
                                  'selectDamage',
                                  queryParameters: {
                                    'user': serializeParam(
                                      FFAppState().usuarioSeleccionado,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );

                                setState(() {
                                  FFAppState().userIndurama = getJsonField(
                                    FFAppState().usuarioSeleccionado,
                                    r'''$''',
                                  );
                                });
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Es necesario que seleccione un cliente',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          },
                          text: 'Seleccionar perfil',
                          options: FFButtonOptions(
                            height: 45.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
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
                            elevation: 2.0,
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
          ],
        ),
      ),
    );
  }
}
