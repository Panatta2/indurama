import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/btn_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'select_damage_model.dart';
export 'select_damage_model.dart';

class SelectDamageWidget extends StatefulWidget {
  const SelectDamageWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final dynamic user;

  @override
  _SelectDamageWidgetState createState() => _SelectDamageWidgetState();
}

class _SelectDamageWidgetState extends State<SelectDamageWidget> {
  late SelectDamageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDamageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().skiptoken = 1;
        FFAppState().nombreTerritorio = null;
        FFAppState().provinciasNames = [];
        FFAppState().provincias = [];
        FFAppState().horariosDisponibles = null;
        FFAppState().tipoGarantia = null;
      });
      _model.getTipoGarantia =
          await GetValuesGroup.getAplicaGarantiaCall.call();
      if ((_model.getTipoGarantia?.succeeded ?? true)) {
        setState(() {
          FFAppState().tipoGarantia = getJsonField(
            (_model.getTipoGarantia?.jsonBody ?? ''),
            r'''$''',
          );
        });
      }
      FFAppState().getPais = null;
      _model.getPais = await GetTerritoriosGroup.getPaisesCall.call();
      if ((_model.getPais?.succeeded ?? true)) {
        setState(() {
          FFAppState().getPais = getJsonField(
            (_model.getPais?.jsonBody ?? ''),
            r'''$''',
          );
        });
      }
      _model.getCobertura = await GetValuesGroup.getCoberturaCall.call();
      if ((_model.getCobertura?.succeeded ?? true)) {
        FFAppState().Cobertura = getJsonField(
          (_model.getCobertura?.jsonBody ?? ''),
          r'''$''',
        );
      }
      _model.getTicketStatus = await GetValuesGroup.getStatusTicketCall.call();
      if ((_model.getTicketStatus?.succeeded ?? true)) {
        setState(() {
          FFAppState().ticketStatus = getJsonField(
            (_model.getTicketStatus?.jsonBody ?? ''),
            r'''$''',
          );
        });
      }
      FFAppState().skiptoken = 1;
      FFAppState().provinciasNames = [];
      FFAppState().provincias = [];
      FFAppState().nombreTerritorio = null;
      _model.idPais = await actions.getIdFromTerritory(
        getJsonField(
          FFAppState().getPais,
          r'''$''',
        ),
        _model.selectPaisValue!,
      );
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.getProvincias =
              await GetTerritoriosGroup.getProvinciasCall.call(
            pais: _model.idPais,
            skipToken: FFAppState().skiptoken,
          );
          if ((_model.getProvincias?.succeeded ?? true)) {
            FFAppState()
                .addToProvincias((_model.getProvincias?.jsonBody ?? ''));
            if (GetTerritoriosGroup.getProvinciasCall.next(
                  (_model.getProvincias?.jsonBody ?? ''),
                ) ==
                null) {
              null?.cancel();
              _model.provinciasNames =
                  await actions.getProvincesFromTerritories(
                FFAppState().provincias.toList(),
              );
              setState(() {
                FFAppState().provinciasNames =
                    _model.provinciasNames!.toList().cast<String>();
              });
            } else {
              FFAppState().skiptoken = FFAppState().skiptoken + 1000;
            }
          }
        },
        startImmediately: true,
      );
    });

    _model.barrioNameController ??= TextEditingController();
    _model.calleController ??= TextEditingController(
        text: getJsonField(
      widget.user,
      r'''$.Street''',
    ).toString().toString());
    _model.referenciaController ??= TextEditingController();
    _model.telefonoController ??= TextEditingController();
    _model.movilController ??= TextEditingController();
    _model.productDamageController ??= TextEditingController();
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
            'Crear Ticket',
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
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 850.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x25090F13),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 12.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 0.0),
                                      child: Text(
                                        'INGRESAR INFORMACIÓN DE UBICACIÓN Y VISITA TÉCNICA',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.selectPaisValueController ??=
                                                FormFieldController<String>(
                                          _model.selectPaisValue ??= 'ECUADOR',
                                        ),
                                        options: ['ECUADOR'],
                                        onChanged: (val) => setState(
                                            () => _model.selectPaisValue = val),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        hintText: 'Seleccionar el pais',
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).info,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 4.0, 12.0, 4.0),
                                        hidesUnderline: true,
                                        disabled: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                    if (FFAppState().provinciasNames.length > 0)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .selectProvinciaValueController ??=
                                              FormFieldController<String>(null),
                                          options: FFAppState().provinciasNames,
                                          onChanged: (val) async {
                                            setState(() => _model
                                                .selectProvinciaValue = val);
                                            FFAppState().nombreTerritorio =
                                                null;
                                            _model.getNombresTerritorio =
                                                await GetTerritoriosGroup
                                                    .getNombreTerritorioCall
                                                    .call(
                                              provincia:
                                                  _model.selectProvinciaValue,
                                            );
                                            if ((_model.getNombresTerritorio
                                                    ?.succeeded ??
                                                true)) {
                                              setState(() {
                                                FFAppState().nombreTerritorio =
                                                    getJsonField(
                                                  (_model.getNombresTerritorio
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$''',
                                                );
                                              });
                                              _model.getTerritoriosList =
                                                  await actions
                                                      .getTerritoryList(
                                                getJsonField(
                                                  FFAppState().nombreTerritorio,
                                                  r'''$''',
                                                ),
                                              );
                                              FFAppState().territoriosActivos =
                                                  _model.getTerritoriosList!
                                                      .toList()
                                                      .cast<String>();
                                            }

                                            setState(() {});
                                          },
                                          width: double.infinity,
                                          searchHintTextStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText:
                                              'Seleccionar provincia/canton',
                                          searchHintText: 'Buscar provincia',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 15.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          disabled: FFAppState()
                                                  .provinciasNames
                                                  .length ==
                                              null,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    if ((FFAppState().provinciasNames.length ==
                                            0) &&
                                        (_model.selectPaisValue != null &&
                                            _model.selectPaisValue != ''))
                                      Lottie.network(
                                        'https://assets9.lottiefiles.com/packages/lf20_ht6o1bdu.json',
                                        height: 80.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                    if (getJsonField(
                                          FFAppState().nombreTerritorio,
                                          r'''$''',
                                        ) !=
                                        null)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .nombreTerritorioValueController ??=
                                              FormFieldController<String>(null),
                                          options:
                                              FFAppState().territoriosActivos,
                                          onChanged: (val) async {
                                            setState(() => _model
                                                .nombreTerritorioValue = val);
                                            _model.getIdTerritorio =
                                                await actions.getObjectId(
                                              FFAppState().nombreTerritorio,
                                              _model.nombreTerritorioValue!,
                                            );
                                            FFAppState().salesTerritorio =
                                                _model.getIdTerritorio!;

                                            setState(() {});
                                          },
                                          width: double.infinity,
                                          searchHintTextStyle: TextStyle(),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText:
                                              'Seleccionar el nombre del territorio',
                                          searchHintText:
                                              'Buscar por Territorio',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 15.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          disabled: getJsonField(
                                                FFAppState().nombreTerritorio,
                                                r'''$''',
                                              ) ==
                                              null,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    if ((getJsonField(
                                              FFAppState().nombreTerritorio,
                                              r'''$''',
                                            ) ==
                                            null) &&
                                        (_model.selectProvinciaValue != null &&
                                            _model.selectProvinciaValue != ''))
                                      Lottie.network(
                                        'https://assets9.lottiefiles.com/packages/lf20_ht6o1bdu.json',
                                        height: 80.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.barrioNameController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Nombre del Barrio',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .barrioNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.calleController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Calle principal, secundaria, numero de lote manzana',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .calleControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.referenciaController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Referencia del domicilio para visita técnica',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .referenciaControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.telefonoController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Teléfono',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .telefonoControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.movilController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Móvil',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .movilControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    if (getJsonField(
                                          FFAppState().tipoGarantia,
                                          r'''$''',
                                        ) !=
                                        null)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .aplicaGarantiaValueController ??=
                                              FormFieldController<String>(null),
                                          options: (getJsonField(
                                            FFAppState().tipoGarantia,
                                            r'''$.d.results[:].Description''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.aplicaGarantiaValue = val),
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText: 'Aplica garantía',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    if (getJsonField(
                                          FFAppState().Cobertura,
                                          r'''$''',
                                        ) !=
                                        null)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .tipodecoberturaValueController ??=
                                              FormFieldController<String>(null),
                                          options: (getJsonField(
                                            FFAppState().Cobertura,
                                            r'''$.d.results[:].Description''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.tipodecoberturaValue =
                                                  val),
                                          width: double.infinity,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText:
                                              'Seleccionar tipo de cobertura.',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 15.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderWidth: 2.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final _datePickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: getCurrentTimestamp,
                                            firstDate: DateTime(1900),
                                            lastDate: getCurrentTimestamp,
                                          );

                                          if (_datePickedDate != null) {
                                            setState(() {
                                              _model.datePicked = DateTime(
                                                _datePickedDate.year,
                                                _datePickedDate.month,
                                                _datePickedDate.day,
                                              );
                                            });
                                          }
                                        },
                                        child: Container(
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 5.0, 12.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                if (_model.datePicked
                                                        ?.microsecondsSinceEpoch ==
                                                    null)
                                                  Text(
                                                    'Seleccionar fecha de compra',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                if (_model.datePicked
                                                        ?.microsecondsSinceEpoch !=
                                                    null)
                                                  Text(
                                                    dateTimeFormat('d/M/y',
                                                        _model.datePicked),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                Icon(
                                                  Icons.date_range_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.productDamageController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Detalles del servicio que solicita y cualquier información relevante nos ayudarán a brindarte la mejor asistencia posible.',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 32.0, 20.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: 4,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .productDamageControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.selectPaisValue ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Seleccionar Pais',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model.selectProvinciaValue ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Seleccionar el nombre del Territorio',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model
                                                      .nombreTerritorioValue ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Este campo es obligatorio',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model.aplicaGarantiaValue ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Seleccionar si Aplica Garantia',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model.tipodecoberturaValue ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Seleccionar Cobertura',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model.datePicked == null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Seleccionar fecha de compra',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                return;
                                              }
                                              _model.createTicket =
                                                  await TicketsGroup
                                                      .createTicketCall
                                                      .call(
                                                name:
                                                    ' Servicio requerido: ${FFAppState().selectInstalacion == true ? 'Instalación' : 'Reparación'}  ,${_model.productDamageController.text}  ,creador por: ${currentUserEmail}',
                                                processingTypeCode: 'ZSTE',
                                                serviceRequestUserLifeCycleStatusCode:
                                                    'ZA',
                                                salesTerritoryID: FFAppState()
                                                    .salesTerritorio,
                                                warrantyID: '11',
                                                cadenaKUT: valueOrDefault(
                                                    currentUserDocument?.cadena,
                                                    ''),
                                                canalKUT: '125',
                                                fechadecompraKUT: _model
                                                            .datePicked ==
                                                        null
                                                    ? ' '
                                                    : '/Date(${_model.datePicked?.millisecondsSinceEpoch?.toString()})/',
                                                tipoCoberturaKUT:
                                                    functions.getCodeCadena(
                                                        _model
                                                            .tipodecoberturaValue,
                                                        getJsonField(
                                                          FFAppState()
                                                              .Cobertura,
                                                          r'''$''',
                                                        )),
                                                buyerPartyID: getJsonField(
                                                          widget.user,
                                                          r'''$.CustomerID''',
                                                        ) ==
                                                        null
                                                    ? getJsonField(
                                                        widget.user,
                                                        r'''$.AccountID''',
                                                      ).toString()
                                                    : getJsonField(
                                                        widget.user,
                                                        r'''$.CustomerID''',
                                                      ).toString(),
                                                barrioKUT: _model
                                                    .barrioNameController.text,
                                                calleKUT:
                                                    _model.calleController.text,
                                                referenciaKUT: _model
                                                    .referenciaController.text,
                                                productID: getJsonField(
                                                  FFAppState().selectProduct,
                                                  r'''$.ProductID''',
                                                ).toString(),
                                                telfonoKUT: _model
                                                    .telefonoController.text,
                                                mvilKUT:
                                                    _model.movilController.text,
                                                warrantyStartdatetimeContent:
                                                    '2023-04-24T21:15:25Z',
                                                aplicaGarantaKUT:
                                                    functions.getCodeCadena(
                                                        _model
                                                            .aplicaGarantiaValue,
                                                        getJsonField(
                                                          FFAppState()
                                                              .tipoGarantia,
                                                          r'''$''',
                                                        )),
                                              );
                                              _shouldSetState = true;
                                              if ((_model.createTicket
                                                      ?.succeeded ??
                                                  true)) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Ticket creado correctamente',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                if (getJsonField(
                                                      (_model.createTicket
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.d.results.ServiceExecutionTeamPartyID''',
                                                    ) !=
                                                    '') {
                                                  setState(() {
                                                    FFAppState()
                                                            .ticketCreateResponse =
                                                        getJsonField(
                                                      (_model.createTicket
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$''',
                                                    );
                                                  });
                                                  _model.createHorarioFunctions =
                                                      await CreateHorarioFunctionsCall
                                                          .call(
                                                    zinput: getJsonField(
                                                      (_model.createTicket
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.d.results.ServiceExecutionTeamPartyID''',
                                                    ).toString(),
                                                  );
                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .createHorarioFunctions
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState()
                                                              .createHorario =
                                                          getJsonField(
                                                        (_model.createHorarioFunctions
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                      ).toString();
                                                    });
                                                    _model.getUuid =
                                                        await actions
                                                            .getHorario(
                                                      getJsonField(
                                                        (_model.createHorarioFunctions
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                      ).toString(),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.readHorarioFunciotns =
                                                        await ReadHorarioFunctionsCall
                                                            .call(
                                                      uuid: _model.getUuid,
                                                    );
                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .readHorarioFunciotns
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.getDates =
                                                          await actions
                                                              .getDates(
                                                        getJsonField(
                                                          (_model.readHorarioFunciotns
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.data''',
                                                        ).toString(),
                                                      );
                                                      _shouldSetState = true;

                                                      context.pushNamed(
                                                        'selectDate',
                                                        queryParameters: {
                                                          'ticketInformation':
                                                              serializeParam(
                                                            getJsonField(
                                                              FFAppState()
                                                                  .ticketCreateResponse,
                                                              r'''$''',
                                                            ),
                                                            ParamType.JSON,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            getJsonField(
                                                              (_model.readHorarioFunciotns
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$''',
                                                            ).toString(),
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          getJsonField(
                                                            (_model.createHorarioFunctions
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$''',
                                                          ).toString(),
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Por el momento no hay horarios definidos',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                }
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Error al crear ticket',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      getJsonField(
                                                        (_model.createTicket
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.error.message.value''',
                                                      ).toString(),
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                            text: 'Consultar disponibilidad',
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
