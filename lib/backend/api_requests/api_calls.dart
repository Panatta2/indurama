import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Products Group Code

class ProductsGroup {
  static GetProductsCall getProductsCall = GetProductsCall();
}

class GetProductsCall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProductsCall',
        'variables': {
          'search': search,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:]''',
        true,
      );
}

/// End Products Group Code

/// Start tickets Group Code

class TicketsGroup {
  static GetTicketsCall getTicketsCall = GetTicketsCall();
  static GetTicketsByStatusStartCall getTicketsByStatusStartCall =
      GetTicketsByStatusStartCall();
  static GetTicketByStatusFinishCall getTicketByStatusFinishCall =
      GetTicketByStatusFinishCall();
  static CreateTicketCall createTicketCall = CreateTicketCall();
  static GetTicketByIdCall getTicketByIdCall = GetTicketByIdCall();
  static GetTicketAdminProgressCall getTicketAdminProgressCall =
      GetTicketAdminProgressCall();
  static GetTicketAdminFinishCall getTicketAdminFinishCall =
      GetTicketAdminFinishCall();
  static GetTicketsSearchCall getTicketsSearchCall = GetTicketsSearchCall();
}

class GetTicketsCall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketsCall',
        'variables': {
          'search': search,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:]''',
        true,
      );
}

class GetTicketsByStatusStartCall {
  Future<ApiCallResponse> call({
    String? cadena = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketsByStatusStartCall',
        'variables': {
          'cadena': cadena,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketByStatusFinishCall {
  Future<ApiCallResponse> call({
    String? cadena = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketByStatusFinishCall',
        'variables': {
          'cadena': cadena,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateTicketCall {
  Future<ApiCallResponse> call({
    String? processingTypeCode = '',
    String? name = '',
    String? serviceRequestUserLifeCycleStatusCode = '',
    String? salesTerritoryID = '',
    String? warrantyID = '',
    String? aplicaGarantaKUT = '',
    String? cadenaKUT = '',
    String? canalKUT = '',
    String? fechadecompraKUT = '',
    String? tipoCoberturaKUT = '',
    String? tipodeGarantaKUT = '',
    String? buyerPartyID = '',
    String? warrantyStartdatetimeContent = '',
    String? barrioKUT = '',
    String? calleKUT = '',
    String? referenciaKUT = '',
    String? productID = '',
    String? telfonoKUT = '',
    String? mvilKUT = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateTicketCall',
        'variables': {
          'processingTypeCode': processingTypeCode,
          'name': name,
          'serviceRequestUserLifeCycleStatusCode':
              serviceRequestUserLifeCycleStatusCode,
          'salesTerritoryID': salesTerritoryID,
          'warrantyID': warrantyID,
          'aplicaGarantaKUT': aplicaGarantaKUT,
          'cadenaKUT': cadenaKUT,
          'canalKUT': canalKUT,
          'fechadecompraKUT': fechadecompraKUT,
          'tipoCoberturaKUT': tipoCoberturaKUT,
          'tipodeGarantaKUT': tipodeGarantaKUT,
          'buyerPartyID': buyerPartyID,
          'warrantyStartdatetimeContent': warrantyStartdatetimeContent,
          'barrioKUT': barrioKUT,
          'calleKUT': calleKUT,
          'referenciaKUT': referenciaKUT,
          'productID': productID,
          'telfonoKUT': telfonoKUT,
          'mvilKUT': mvilKUT,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketByIdCall {
  Future<ApiCallResponse> call({
    String? ticket = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketByIdCall',
        'variables': {
          'ticket': ticket,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketAdminProgressCall {
  Future<ApiCallResponse> call({
    String? skip = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketAdminProgressCall',
        'variables': {
          'skip': skip,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketAdminFinishCall {
  Future<ApiCallResponse> call({
    String? skip = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketAdminFinishCall',
        'variables': {
          'skip': skip,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketsSearchCall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketsSearchCall',
        'variables': {
          'search': search,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End tickets Group Code

/// Start Clients Group Code

class ClientsGroup {
  static GetClientIndividualCall getClientIndividualCall =
      GetClientIndividualCall();
  static GetClientOrganizacionCall getClientOrganizacionCall =
      GetClientOrganizacionCall();
  static CreateClientIndividualCall createClientIndividualCall =
      CreateClientIndividualCall();
  static CreateOrganizationClientCall createOrganizationClientCall =
      CreateOrganizationClientCall();
  static GetClientCall getClientCall = GetClientCall();
  static GetClienteOrganizationTicketCall getClienteOrganizationTicketCall =
      GetClienteOrganizationTicketCall();
}

class GetClientIndividualCall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetClientIndividualCall',
        'variables': {
          'search': search,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results''',
        true,
      );
}

class GetClientOrganizacionCall {
  Future<ApiCallResponse> call({
    String? cedula = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetClientOrganizacionCall',
        'variables': {
          'cedula': cedula,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateClientIndividualCall {
  Future<ApiCallResponse> call({
    String? taxTypeCode = '',
    String? taxID = '',
    String? countryCode = '',
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
    String? phone = '',
    String? stateCode = '',
    String? streetPostalCode = '',
    String? languageCode = '',
    String? genderCode = '',
    String? salesOrganisationID = '',
    String? distributionChannelCode = '',
    String? divisionCode = '',
    String? currencyCode = '',
    String? street = '',
    String? email = '',
    String? roleCode = '',
    String? lifeCycleStatusCode = '',
    String? mobile = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateClientIndividualCall',
        'variables': {
          'taxTypeCode': taxTypeCode,
          'taxID': taxID,
          'countryCode': countryCode,
          'firstName': firstName,
          'middleName': middleName,
          'lastName': lastName,
          'phone': phone,
          'stateCode': stateCode,
          'streetPostalCode': streetPostalCode,
          'languageCode': languageCode,
          'genderCode': genderCode,
          'salesOrganisationID': salesOrganisationID,
          'distributionChannelCode': distributionChannelCode,
          'divisionCode': divisionCode,
          'currencyCode': currencyCode,
          'street': street,
          'email': email,
          'roleCode': roleCode,
          'lifeCycleStatusCode': lifeCycleStatusCode,
          'mobile': mobile,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateOrganizationClientCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? roleCode = '',
    String? countryCode = '',
    String? zIdProvinciaSDK = '',
    String? stateCode = '',
    String? streetPostalCode = '',
    String? zDistritoSDK = '',
    String? street = '',
    String? houseNumber = '',
    String? taxId = '',
    String? referencia = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateOrganizationClientCall',
        'variables': {
          'name': name,
          'email': email,
          'roleCode': roleCode,
          'countryCode': countryCode,
          'zIdProvinciaSDK': zIdProvinciaSDK,
          'stateCode': stateCode,
          'streetPostalCode': streetPostalCode,
          'zDistritoSDK': zDistritoSDK,
          'street': street,
          'houseNumber': houseNumber,
          'taxId': taxId,
          'referencia': referencia,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetClientCall {
  Future<ApiCallResponse> call({
    String? user = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetClientCall',
        'variables': {
          'user': user,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetClienteOrganizationTicketCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetClienteOrganizationTicketCall',
        'variables': {
          'id': id,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End Clients Group Code

/// Start getValues Group Code

class GetValuesGroup {
  static GetCadenasAllCall getCadenasAllCall = GetCadenasAllCall();
  static GetProcessingTypeCodeCall getProcessingTypeCodeCall =
      GetProcessingTypeCodeCall();
  static GetAplicaGarantiaCall getAplicaGarantiaCall = GetAplicaGarantiaCall();
  static GetCoberturaCall getCoberturaCall = GetCoberturaCall();
  static GetStatusTicketCall getStatusTicketCall = GetStatusTicketCall();
  static GetTipoGarantiaCall getTipoGarantiaCall = GetTipoGarantiaCall();
  static TecnicServicesCall tecnicServicesCall = TecnicServicesCall();
  static StateCodeCall stateCodeCall = StateCodeCall();
  static TaxTypeCodeCall taxTypeCodeCall = TaxTypeCodeCall();
  static GetServiceRequestUserLifeCycleStatusCodeCall
      getServiceRequestUserLifeCycleStatusCodeCall =
      GetServiceRequestUserLifeCycleStatusCodeCall();
}

class GetCadenasAllCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCadenasAllCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:]''',
        true,
      );
}

class GetProcessingTypeCodeCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProcessingTypeCodeCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results''',
        true,
      );
}

class GetAplicaGarantiaCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAplicaGarantiaCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetCoberturaCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCoberturaCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetStatusTicketCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetStatusTicketCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTipoGarantiaCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTipoGarantiaCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class TecnicServicesCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TecnicServicesCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class StateCodeCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StateCodeCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:].Description''',
        true,
      );
}

class TaxTypeCodeCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TaxTypeCodeCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:].Description''',
        true,
      );
}

class GetServiceRequestUserLifeCycleStatusCodeCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetServiceRequestUserLifeCycleStatusCodeCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End getValues Group Code

/// Start getTerritorios Group Code

class GetTerritoriosGroup {
  static GetTerritorioPaisCall getTerritorioPaisCall = GetTerritorioPaisCall();
  static GetProvinciasCall getProvinciasCall = GetProvinciasCall();
  static GetNombreTerritorioCall getNombreTerritorioCall =
      GetNombreTerritorioCall();
  static GetPaisesCall getPaisesCall = GetPaisesCall();
}

class GetTerritorioPaisCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTerritorioPaisCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetProvinciasCall {
  Future<ApiCallResponse> call({
    String? pais = '',
    int? skipToken,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProvinciasCall',
        'variables': {
          'pais': pais,
          'skipToken': skipToken,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic next(dynamic response) => getJsonField(
        response,
        r'''$.d.__next''',
      );
}

class GetNombreTerritorioCall {
  Future<ApiCallResponse> call({
    String? provincia = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetNombreTerritorioCall',
        'variables': {
          'provincia': provincia,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic nombreTerritorio(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:].Nombre_Territorio''',
        true,
      );
}

class GetPaisesCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetPaisesCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End getTerritorios Group Code

class GetUserDataBookCall {
  static Future<ApiCallResponse> call({
    String? numeroIdentificacion = '',
    String? tipoPersona = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserDataBook',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/getCustomerData',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'numero_identificacion': numeroIdentificacion,
        'tipo_persona': tipoPersona,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendWppInformationCall {
  static Future<ApiCallResponse> call({
    String? number = '',
    String? firstName = '',
    String? deepLink = '',
    String? uniqueId = '',
    String? email = '',
    String? lastName = '',
    String? phone = '',
    String? ticketId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SendWppInformationCall',
        'variables': {
          'number': number,
          'firstName': firstName,
          'deepLink': deepLink,
          'uniqueId': uniqueId,
          'email': email,
          'lastName': lastName,
          'phone': phone,
          'ticketId': ticketId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTipoCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTipoCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? email = '',
    String? password = '',
    String? displayName = '',
    String? cadena = '',
    String? role = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/createUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'email': email,
        'password': password,
        'displayName': displayName,
        'cadena': cadena,
        'role': role,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? uid = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/deleteUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateHorarioFunctionsCall {
  static Future<ApiCallResponse> call({
    String? zinput = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createHorarioFunctions',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/createHorario',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'zInput': zinput,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReadHorarioFunctionsCall {
  static Future<ApiCallResponse> call({
    String? uuid = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'readHorarioFunctions',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/readHorario',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uuid': uuid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreatePositionCall {
  static Future<ApiCallResponse> call({
    String? ticket = '',
    String? fechaSeleccionada = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createPosition',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/setPosicion',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ticket': ticket,
        'fechaSeleccionada': fechaSeleccionada,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTicketByIdUserCall {
  static Future<ApiCallResponse> call({
    String? ticket = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketByIdUserCall',
        'variables': {
          'ticket': ticket,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTicketStatusCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketStatusCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:]''',
        true,
      );
}

class GetRequerimientosCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? codigoCategoria = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getRequerimientos',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/getRequerimientos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
        'codigoCategoria': codigoCategoria,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCantonesCodigosCall {
  static Future<ApiCallResponse> call({
    String? provincia = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCantonesCodigos',
      apiUrl:
          'https://us-central1-indurama-f99b2.cloudfunctions.net/obtenerCantonesParroquias',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'provincia': provincia,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic canton(dynamic response) => getJsonField(
        response,
        r'''$.data[:].canton''',
        true,
      );
  static dynamic parroquia(dynamic response) => getJsonField(
        response,
        r'''$.data[:].parroquias[:].parroquia''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
