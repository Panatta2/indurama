import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_detail_model.dart';
export 'ticket_detail_model.dart';

class TicketDetailWidget extends StatefulWidget {
  const TicketDetailWidget({
    Key? key,
    required this.ticketDetail,
    required this.objetado,
  }) : super(key: key);

  final dynamic ticketDetail;
  final bool? objetado;

  @override
  _TicketDetailWidgetState createState() => _TicketDetailWidgetState();
}

class _TicketDetailWidgetState extends State<TicketDetailWidget> {
  late TicketDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.95,
        constraints: BoxConstraints(
          maxWidth: 600.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              Text(
                getJsonField(
                  widget.ticketDetail,
                  r'''$.Name''',
                ).toString(),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      fontSize: 20.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Text(
                  getJsonField(
                    widget.ticketDetail,
                    r'''$.ID''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        fontSize: 17.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Text(
                  getJsonField(
                    widget.ticketDetail,
                    r'''$.ProductDescription''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        fontSize: 17.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Marca${getJsonField(
                      widget.ticketDetail,
                      r'''$.Marca1_KUTText''',
                    ).toString()}',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tecnico de servicios:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                                  widget.ticketDetail,
                                  r'''$.ServiceSupportTeamPartyName''',
                                ) !=
                                null
                            ? getJsonField(
                                widget.ticketDetail,
                                r'''$.ServiceSupportTeamPartyName''',
                              ).toString()
                            : ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'NombreCliente:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                                  widget.ticketDetail,
                                  r'''$.ProductRecipientPartyName''',
                                ) !=
                                null
                            ? getJsonField(
                                widget.ticketDetail,
                                r'''$.ProductRecipientPartyName''',
                              ).toString()
                            : ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Cedula Cliente:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                                  widget.ticketDetail,
                                  r'''$.NIdentificacin_KUT''',
                                ) !=
                                null
                            ? getJsonField(
                                widget.ticketDetail,
                                r'''$.NIdentificacin_KUT''',
                              ).toString()
                            : ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Cadena:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.Cadena_KUTText''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Garantía:',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.TipodeGaranta_KUTText''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tipo de cobertura:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.TipoCobertura_KUTText''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tipo de servicio:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.ProcessingTypeCodeText''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Nombre del Territorio:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.NombreTerritorio_KUT''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Causa de la demora:  ',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    Expanded(
                      child: Text(
                        getJsonField(
                          widget.ticketDetail,
                          r'''$.CausadeDemora_KUTText''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fecha de compra:',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 17.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Text(
                          functions.getDate(getJsonField(
                            widget.ticketDetail,
                            r'''$.Fechadecompra_KUT''',
                          ).toString()),
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displaySmallFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estado del ticket:',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 17.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              getJsonField(
                                widget.ticketDetail,
                                r'''$.ServiceRequestUserLifeCycleStatusCodeText''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .displaySmallFamily),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
