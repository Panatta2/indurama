import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ConcensoPlataforma Group Code

class ConcensoPlataformaGroup {
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

/// End ConcensoPlataforma Group Code

/// Start CreateTicket Group Code

class CreateTicketGroup {
  static CreateCall createCall = CreateCall();
}

class CreateCall {
  Future<ApiCallResponse> call({
    String? partyID = '',
    String? name = '',
    String? cadenaKUT = '',
    String? nIdentificacinKUT = '',
    String? tipoIdentificacinKUT = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCall',
        'variables': {
          'partyID': partyID,
          'name': name,
          'cadenaKUT': cadenaKUT,
          'nIdentificacinKUT': nIdentificacinKUT,
          'tipoIdentificacinKUT': tipoIdentificacinKUT,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End CreateTicket Group Code

/// Start getTickets Group Code

class GetTicketsGroup {
  static GetTicketsCall getTicketsCall = GetTicketsCall();
  static GetTicketsByStatusStartCall getTicketsByStatusStartCall =
      GetTicketsByStatusStartCall();
  static GetTicketByStatusProgressCall getTicketByStatusProgressCall =
      GetTicketByStatusProgressCall();
  static GetTicketByStatusFinishCall getTicketByStatusFinishCall =
      GetTicketByStatusFinishCall();
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

class GetTicketByStatusProgressCall {
  Future<ApiCallResponse> call({
    String? cadena = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTicketByStatusProgressCall',
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

/// End getTickets Group Code

/// Start getClients Group Code

class GetClientsGroup {
  static GetClientIndividualCall getClientIndividualCall =
      GetClientIndividualCall();
  static GetClientOrganizacionCall getClientOrganizacionCall =
      GetClientOrganizacionCall();
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
    String? search = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetClientOrganizacionCall',
        'variables': {
          'search': search,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End getClients Group Code

/// Start getTicketsValue Group Code

class GetTicketsValueGroup {
  static String baseUrl =
      'https://my347843.crm.ondemand.com/sap/c4c/odata/v1/c4codataapi';
  static Map<String, String> headers = {
    'Authorization': 'Basic X1NZU19PREFUQV9QOmFfU1lTX09EQVRBX1Aw',
  };
  static GetCadenasAllCall getCadenasAllCall = GetCadenasAllCall();
  static GetProcessingTypeCodeCall getProcessingTypeCodeCall =
      GetProcessingTypeCodeCall();
  static GetGatantiaCall getGatantiaCall = GetGatantiaCall();
  static GetCoberturaCall getCoberturaCall = GetCoberturaCall();
  static GetStatusTicketCall getStatusTicketCall = GetStatusTicketCall();
}

class GetCadenasAllCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCadenasAll',
      apiUrl:
          '${GetTicketsValueGroup.baseUrl}/ServiceRequestCadena_KUTCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTicketsValueGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results[:]''',
        true,
      );
}

class GetProcessingTypeCodeCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getProcessingTypeCode',
      apiUrl:
          '${GetTicketsValueGroup.baseUrl}/ServiceRequestProcessingTypeCodeCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTicketsValueGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.d.results''',
        true,
      );
}

class GetGatantiaCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getGatantia',
      apiUrl:
          '${GetTicketsValueGroup.baseUrl}/ServiceRequestAplicaGaranta_KUTCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTicketsValueGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCoberturaCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCobertura',
      apiUrl:
          '${GetTicketsValueGroup.baseUrl}/ServiceRequestTipoCobertura_KUTCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTicketsValueGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStatusTicketCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getStatusTicket',
      apiUrl:
          '${GetTicketsValueGroup.baseUrl}/ServiceRequestServiceRequestUserLifeCycleStatusCodeCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTicketsValueGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End getTicketsValue Group Code

/// Start getTerritorios Group Code

class GetTerritoriosGroup {
  static String baseUrl =
      'https://my347843.crm.ondemand.com/sap/c4c/odata/cust/v1/obtener_territorio';
  static Map<String, String> headers = {
    'Authorization': 'Basic X1NZU19PREFUQV9QOmFfU1lTX09EQVRBX1Aw',
  };
  static GetTerritorioPaisCall getTerritorioPaisCall = GetTerritorioPaisCall();
  static GetTerritoriosCall getTerritoriosCall = GetTerritoriosCall();
  static GetProvinciasCall getProvinciasCall = GetProvinciasCall();
}

class GetTerritorioPaisCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getTerritorioPais',
      apiUrl: '${GetTerritoriosGroup.baseUrl}/SalesTerritoryCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTerritoriosGroup.headers,
      },
      params: {
        '\$format': "json",
        '\$filter':
            "HierarchyLevelCode eq \'Z02\' and (ID_Territorio eq \'11819\' or ID_Territorio eq \'29793\' or ID_Territorio eq \'37201\')",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTerritoriosCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getTerritorios',
      apiUrl: '${GetTerritoriosGroup.baseUrl}/SalesTerritoryCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTerritoriosGroup.headers,
      },
      params: {
        '\$format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic next(dynamic response) => getJsonField(
        response,
        r'''$.d.__next''',
      );
}

class GetProvinciasCall {
  Future<ApiCallResponse> call({
    String? pais = '',
    int? skipToken,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getProvincias',
      apiUrl: '${GetTerritoriosGroup.baseUrl}/SalesTerritoryCollection',
      callType: ApiCallType.GET,
      headers: {
        ...GetTerritoriosGroup.headers,
      },
      params: {
        '\$format': "json",
        '\$filter': "ID_Territorio_Padre eq \'${pais}\'",
        '\$skiptoken': skipToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic next(dynamic response) => getJsonField(
        response,
        r'''$.d.__next''',
      );
}

/// End getTerritorios Group Code

class GetUserDataBookCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserDataBook',
      apiUrl:
          'https://api2cer.consensocorp.com/api/v1/marcimex/mod-cartera/car-customers/databook',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic c2FwOlpVNUhCWjdCSDMzNDkzNTY=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
