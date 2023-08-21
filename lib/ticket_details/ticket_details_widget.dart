import '/backend/api_requests/api_calls.dart';
import '/components/verification_ticket_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_details_model.dart';
export 'ticket_details_model.dart';

class TicketDetailsWidget extends StatefulWidget {
  const TicketDetailsWidget({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  final String? ticket;

  @override
  _TicketDetailsWidgetState createState() => _TicketDetailsWidgetState();
}

class _TicketDetailsWidgetState extends State<TicketDetailsWidget> {
  late TicketDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getTicketInformation = await GetTicketByIdUserCall.call(
        ticket: 'ID eq\'${widget.ticket}\'',
      );
      if ((_model.getTicketInformation?.succeeded ?? true)) {
        _model.getClient = await ClientsGroup.getClientIndividualCall.call(
          search: getJsonField(
            (_model.getTicketInformation?.jsonBody ?? ''),
            r'''$.d.results[:].BuyerPartyID''',
          ).toString().toString(),
        );
        if ((_model.getClient?.succeeded ?? true)) {
          if (getJsonField(
                (_model.getClient?.jsonBody ?? ''),
                r'''$.d.results[:]''',
              ) !=
              null) {
            setState(() {
              FFAppState().clientInformation = getJsonField(
                (_model.getClient?.jsonBody ?? ''),
                r'''$.d.results[:]''',
              );
            });
          } else {
            _model.apiResultvdy =
                await ClientsGroup.getClienteOrganizationTicketCall.call(
              id: getJsonField(
                (_model.getTicketInformation?.jsonBody ?? ''),
                r'''$.d.results[:].BuyerPartyID''',
              ).toString().toString(),
            );
            if ((_model.apiResultvdy?.succeeded ?? true)) {
              setState(() {
                FFAppState().clientInformation = getJsonField(
                  (_model.apiResultvdy?.jsonBody ?? ''),
                  r'''$.d.results[0]''',
                );
              });
            }
          }

          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            context: context,
            builder: (context) {
              return GestureDetector(
                onTap: () =>
                    FocusScope.of(context).requestFocus(_model.unfocusNode),
                child: Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: VerificationTicketWidget(
                    ticketDetail: getJsonField(
                      (_model.getTicketInformation?.jsonBody ?? ''),
                      r'''$''',
                    ),
                    userInformation: FFAppState().clientInformation,
                  ),
                ),
              );
            },
          ).then((value) => setState(() {}));
        } else {
          return;
        }
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
        return;
      }
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

    return FutureBuilder<ApiCallResponse>(
      future: TicketsGroup.getTicketByIdCall.call(
        ticket: 'ID eq \'${widget.ticket}\'',
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final ticketDetailsGetTicketByIdResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Verificar estado Ticket',
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
          ),
        );
      },
    );
  }
}
