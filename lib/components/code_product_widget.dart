import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_product_model.dart';
export 'code_product_model.dart';

class CodeProductWidget extends StatefulWidget {
  const CodeProductWidget({
    Key? key,
    required this.requerimeinto,
  }) : super(key: key);

  final String? requerimeinto;

  @override
  _CodeProductWidgetState createState() => _CodeProductWidgetState();
}

class _CodeProductWidgetState extends State<CodeProductWidget> {
  late CodeProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeProductModel());

    _model.codigoCategoriaController ??= TextEditingController(
        text: widget.requerimeinto == null || widget.requerimeinto == ''
            ? ''
            : widget.requerimeinto);
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: Container(
            width: double.infinity,
            child: TextFormField(
              controller: _model.codigoCategoriaController,
              autofocus: true,
              autofillHints: [AutofillHints.email],
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Codigo Producto',
                labelStyle: FlutterFlowTheme.of(context).labelLarge,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              ),
              style: FlutterFlowTheme.of(context).bodyLarge,
              keyboardType: TextInputType.emailAddress,
              validator: _model.codigoCategoriaControllerValidator
                  .asValidator(context),
            ),
          ),
        ),
      ],
    );
  }
}
