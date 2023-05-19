import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'validate_identity_model.dart';
export 'validate_identity_model.dart';

class ValidateIdentityWidget extends StatefulWidget {
  const ValidateIdentityWidget({Key? key}) : super(key: key);

  @override
  _ValidateIdentityWidgetState createState() => _ValidateIdentityWidgetState();
}

class _ValidateIdentityWidgetState extends State<ValidateIdentityWidget>
    with TickerProviderStateMixin {
  late ValidateIdentityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidateIdentityModel());

    _model.phoneNumberController ??= TextEditingController();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Verificación de información',
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: Text(
                      'Es necesario que ingrese su número de cédula de identidad para verificar sus datos en nuestro sistema.',
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
              child: TextFormField(
                controller: _model.phoneNumberController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Cedula o Ruc',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall,
                  hintText: 'Ingrese el número de identificación',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFF0F1113),
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                maxLines: null,
                keyboardType: TextInputType.phone,
                validator:
                    _model.phoneNumberControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: FlutterFlowRadioButton(
                options: ['Cliente Individual', 'Cliente Empresa'].toList(),
                onChanged: (val) => setState(() {}),
                controller: _model.radioButtonValueController ??=
                    FormFieldController<String>(null),
                optionHeight: 25.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Colors.black,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                buttonPosition: RadioButtonPosition.left,
                direction: Axis.horizontal,
                radioButtonColor: Colors.blue,
                inactiveRadioButtonColor: Color(0x8A000000),
                toggleable: false,
                horizontalAlignment: WrapAlignment.center,
                verticalAlignment: WrapCrossAlignment.start,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (_model.phoneNumberController.text != null &&
                      _model.phoneNumberController.text != '') {
                    if (_model.radioButtonValue != null &&
                        _model.radioButtonValue != '') {
                      if (_model.radioButtonValue == 'Cliente Empresa') {
                        _model.getClientOrganization = await GetClientsGroup
                            .getClientOrganizacionCall
                            .call(
                          search:
                              'AccountID eq \'${_model.phoneNumberController.text}\'',
                        );
                        _shouldSetState = true;
                        if ((_model.getClientOrganization?.succeeded ?? true)) {
                          if (getJsonField(
                                (_model.getClientOrganization?.jsonBody ?? ''),
                                r'''$.d.results[:]''',
                              ) ==
                              null) {
                            setState(() {
                              FFAppState().userIndurama = null;
                              FFAppState().typeClient = true;
                            });
                          } else {
                            setState(() {
                              FFAppState().userIndurama = getJsonField(
                                (_model.getClientOrganization?.jsonBody ?? ''),
                                r'''$.d.results[:]''',
                              );
                              FFAppState().typeClient = true;
                            });
                          }
                        } else {
                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      } else {
                        _model.getClient =
                            await GetClientsGroup.getClientIndividualCall.call(
                          search:
                              'CustomerID eq \'${_model.phoneNumberController.text}\'',
                        );
                        _shouldSetState = true;
                        if ((_model.getClient?.succeeded ?? true)) {
                          if (getJsonField(
                                (_model.getClient?.jsonBody ?? ''),
                                r'''$.d.results[:]''',
                              ) ==
                              null) {
                            setState(() {
                              FFAppState().userIndurama = null;
                              FFAppState().typeClient = false;
                            });
                          } else {
                            setState(() {
                              FFAppState().userIndurama = getJsonField(
                                (_model.getClient?.jsonBody ?? ''),
                                r'''$.d.results[:]''',
                              );
                              FFAppState().typeClient = false;
                            });
                          }
                        } else {
                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      }

                      if (FFAppState().typeClient) {
                        context.pushNamed(
                          'setClienteOrganizacion',
                          queryParams: {
                            'userIndurama': serializeParam(
                              getJsonField(
                                FFAppState().userIndurama,
                                r'''$''',
                              ),
                              ParamType.JSON,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed(
                          'setClienteIndividual',
                          queryParams: {
                            'userIndurama': serializeParam(
                              getJsonField(
                                FFAppState().userIndurama,
                                r'''$''',
                              ),
                              ParamType.JSON,
                            ),
                          }.withoutNulls,
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Debe seleccionar el tipo de cliente',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                    return;
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Debe ingresar un valor valido.',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
                text: 'Verificar',
                options: FFButtonOptions(
                  width: 290.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Colors.white,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
