import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_jsonSearch')) {
        try {
          _jsonSearch = jsonDecode(prefs.getString('ff_jsonSearch') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _role = prefs.getString('ff_role') ?? _role;
    });
    _safeInit(() {
      _cadena = prefs.getString('ff_cadena') ?? _cadena;
    });
    _safeInit(() {
      _selectRole = prefs.getString('ff_selectRole')?.ref ?? _selectRole;
    });
    _safeInit(() {
      _admin = prefs.getString('ff_admin') ?? _admin;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_cadenas')) {
        try {
          _cadenas = jsonDecode(prefs.getString('ff_cadenas') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _tickets = prefs.getBool('ff_tickets') ?? _tickets;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ProcessingTypeCode')) {
        try {
          _ProcessingTypeCode =
              jsonDecode(prefs.getString('ff_ProcessingTypeCode') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Gatantias')) {
        try {
          _Gatantias = jsonDecode(prefs.getString('ff_Gatantias') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Cobertura')) {
        try {
          _Cobertura = jsonDecode(prefs.getString('ff_Cobertura') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ticketStatus')) {
        try {
          _ticketStatus = jsonDecode(prefs.getString('ff_ticketStatus') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_getPais')) {
        try {
          _getPais = jsonDecode(prefs.getString('ff_getPais') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_territorios')) {
        try {
          _territorios = jsonDecode(prefs.getString('ff_territorios') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _skiptoken = prefs.getInt('ff_skiptoken') ?? _skiptoken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_nombreTerritorio')) {
        try {
          _nombreTerritorio =
              jsonDecode(prefs.getString('ff_nombreTerritorio') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _territoriosActivos =
          prefs.getStringList('ff_territoriosActivos') ?? _territoriosActivos;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_tipoGarantia')) {
        try {
          _tipoGarantia = jsonDecode(prefs.getString('ff_tipoGarantia') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _salesTerritorio =
          prefs.getString('ff_salesTerritorio') ?? _salesTerritorio;
    });
    _safeInit(() {
      _selectInstalacion =
          prefs.getBool('ff_selectInstalacion') ?? _selectInstalacion;
    });
    _safeInit(() {
      _selectReparacion =
          prefs.getBool('ff_selectReparacion') ?? _selectReparacion;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectProduct')) {
        try {
          _selectProduct =
              jsonDecode(prefs.getString('ff_selectProduct') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ticketCreateResponse')) {
        try {
          _ticketCreateResponse =
              jsonDecode(prefs.getString('ff_ticketCreateResponse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _createHorario = prefs.getString('ff_createHorario') ?? _createHorario;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_horariosDisponibles')) {
        try {
          _horariosDisponibles =
              jsonDecode(prefs.getString('ff_horariosDisponibles') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_fechaSeleccionada')) {
        try {
          _fechaSeleccionada =
              jsonDecode(prefs.getString('ff_fechaSeleccionada') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _fechaSap = prefs.getString('ff_fechaSap') ?? _fechaSap;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ticketDetail')) {
        try {
          _ticketDetail = jsonDecode(prefs.getString('ff_ticketDetail') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userDataBook')) {
        try {
          _userDataBook = jsonDecode(prefs.getString('ff_userDataBook') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_stateCode')) {
        try {
          _stateCode = jsonDecode(prefs.getString('ff_stateCode') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_TaxTypeCode')) {
        try {
          _TaxTypeCode = jsonDecode(prefs.getString('ff_TaxTypeCode') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _simpleSearch = prefs.getBool('ff_simpleSearch') ?? _simpleSearch;
    });
    _safeInit(() {
      _selectCadena = prefs.getString('ff_selectCadena')?.ref ?? _selectCadena;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ServiceRequestUserLifeCycleStatusCode')) {
        try {
          _ServiceRequestUserLifeCycleStatusCode = jsonDecode(
              prefs.getString('ff_ServiceRequestUserLifeCycleStatusCode') ??
                  '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_usuarioSeleccionado')) {
        try {
          _usuarioSeleccionado =
              jsonDecode(prefs.getString('ff_usuarioSeleccionado') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _ingresado = prefs.getString('ff_ingresado') ?? _ingresado;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_clientInformation')) {
        try {
          _clientInformation =
              jsonDecode(prefs.getString('ff_clientInformation') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _postalCode = prefs.getString('ff_postalCode') ?? _postalCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _jsonSearch;
  dynamic get jsonSearch => _jsonSearch;
  set jsonSearch(dynamic _value) {
    _jsonSearch = _value;
    prefs.setString('ff_jsonSearch', jsonEncode(_value));
  }

  String _coccion = '';
  String get coccion => _coccion;
  set coccion(String _value) {
    _coccion = _value;
  }

  String _role = '';
  String get role => _role;
  set role(String _value) {
    _role = _value;
    prefs.setString('ff_role', _value);
  }

  String _cadena = '';
  String get cadena => _cadena;
  set cadena(String _value) {
    _cadena = _value;
    prefs.setString('ff_cadena', _value);
  }

  DocumentReference? _selectRole;
  DocumentReference? get selectRole => _selectRole;
  set selectRole(DocumentReference? _value) {
    _selectRole = _value;
    _value != null
        ? prefs.setString('ff_selectRole', _value.path)
        : prefs.remove('ff_selectRole');
  }

  String _admin = 'admin';
  String get admin => _admin;
  set admin(String _value) {
    _admin = _value;
    prefs.setString('ff_admin', _value);
  }

  dynamic _userIndurama;
  dynamic get userIndurama => _userIndurama;
  set userIndurama(dynamic _value) {
    _userIndurama = _value;
  }

  dynamic _cadenas;
  dynamic get cadenas => _cadenas;
  set cadenas(dynamic _value) {
    _cadenas = _value;
    prefs.setString('ff_cadenas', jsonEncode(_value));
  }

  bool _tickets = false;
  bool get tickets => _tickets;
  set tickets(bool _value) {
    _tickets = _value;
    prefs.setBool('ff_tickets', _value);
  }

  dynamic _ProcessingTypeCode;
  dynamic get ProcessingTypeCode => _ProcessingTypeCode;
  set ProcessingTypeCode(dynamic _value) {
    _ProcessingTypeCode = _value;
    prefs.setString('ff_ProcessingTypeCode', jsonEncode(_value));
  }

  dynamic _Gatantias;
  dynamic get Gatantias => _Gatantias;
  set Gatantias(dynamic _value) {
    _Gatantias = _value;
    prefs.setString('ff_Gatantias', jsonEncode(_value));
  }

  dynamic _Cobertura;
  dynamic get Cobertura => _Cobertura;
  set Cobertura(dynamic _value) {
    _Cobertura = _value;
    prefs.setString('ff_Cobertura', jsonEncode(_value));
  }

  dynamic _ticketStatus;
  dynamic get ticketStatus => _ticketStatus;
  set ticketStatus(dynamic _value) {
    _ticketStatus = _value;
    prefs.setString('ff_ticketStatus', jsonEncode(_value));
  }

  dynamic _getPais;
  dynamic get getPais => _getPais;
  set getPais(dynamic _value) {
    _getPais = _value;
    prefs.setString('ff_getPais', jsonEncode(_value));
  }

  dynamic _territorios;
  dynamic get territorios => _territorios;
  set territorios(dynamic _value) {
    _territorios = _value;
    prefs.setString('ff_territorios', jsonEncode(_value));
  }

  List<dynamic> _provincias = [];
  List<dynamic> get provincias => _provincias;
  set provincias(List<dynamic> _value) {
    _provincias = _value;
  }

  void addToProvincias(dynamic _value) {
    _provincias.add(_value);
  }

  void removeFromProvincias(dynamic _value) {
    _provincias.remove(_value);
  }

  void removeAtIndexFromProvincias(int _index) {
    _provincias.removeAt(_index);
  }

  void updateProvinciasAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _provincias[_index] = updateFn(_provincias[_index]);
  }

  int _skiptoken = 1;
  int get skiptoken => _skiptoken;
  set skiptoken(int _value) {
    _skiptoken = _value;
    prefs.setInt('ff_skiptoken', _value);
  }

  List<String> _provinciasNames = [];
  List<String> get provinciasNames => _provinciasNames;
  set provinciasNames(List<String> _value) {
    _provinciasNames = _value;
  }

  void addToProvinciasNames(String _value) {
    _provinciasNames.add(_value);
  }

  void removeFromProvinciasNames(String _value) {
    _provinciasNames.remove(_value);
  }

  void removeAtIndexFromProvinciasNames(int _index) {
    _provinciasNames.removeAt(_index);
  }

  void updateProvinciasNamesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _provinciasNames[_index] = updateFn(_provinciasNames[_index]);
  }

  dynamic _nombreTerritorio;
  dynamic get nombreTerritorio => _nombreTerritorio;
  set nombreTerritorio(dynamic _value) {
    _nombreTerritorio = _value;
    prefs.setString('ff_nombreTerritorio', jsonEncode(_value));
  }

  List<String> _territoriosActivos = [];
  List<String> get territoriosActivos => _territoriosActivos;
  set territoriosActivos(List<String> _value) {
    _territoriosActivos = _value;
    prefs.setStringList('ff_territoriosActivos', _value);
  }

  void addToTerritoriosActivos(String _value) {
    _territoriosActivos.add(_value);
    prefs.setStringList('ff_territoriosActivos', _territoriosActivos);
  }

  void removeFromTerritoriosActivos(String _value) {
    _territoriosActivos.remove(_value);
    prefs.setStringList('ff_territoriosActivos', _territoriosActivos);
  }

  void removeAtIndexFromTerritoriosActivos(int _index) {
    _territoriosActivos.removeAt(_index);
    prefs.setStringList('ff_territoriosActivos', _territoriosActivos);
  }

  void updateTerritoriosActivosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _territoriosActivos[_index] = updateFn(_territoriosActivos[_index]);
    prefs.setStringList('ff_territoriosActivos', _territoriosActivos);
  }

  dynamic _tipoGarantia;
  dynamic get tipoGarantia => _tipoGarantia;
  set tipoGarantia(dynamic _value) {
    _tipoGarantia = _value;
    prefs.setString('ff_tipoGarantia', jsonEncode(_value));
  }

  String _salesTerritorio = '';
  String get salesTerritorio => _salesTerritorio;
  set salesTerritorio(String _value) {
    _salesTerritorio = _value;
    prefs.setString('ff_salesTerritorio', _value);
  }

  bool _selectInstalacion = false;
  bool get selectInstalacion => _selectInstalacion;
  set selectInstalacion(bool _value) {
    _selectInstalacion = _value;
    prefs.setBool('ff_selectInstalacion', _value);
  }

  bool _selectReparacion = false;
  bool get selectReparacion => _selectReparacion;
  set selectReparacion(bool _value) {
    _selectReparacion = _value;
    prefs.setBool('ff_selectReparacion', _value);
  }

  dynamic _selectProduct;
  dynamic get selectProduct => _selectProduct;
  set selectProduct(dynamic _value) {
    _selectProduct = _value;
    prefs.setString('ff_selectProduct', jsonEncode(_value));
  }

  dynamic _ticketCreateResponse;
  dynamic get ticketCreateResponse => _ticketCreateResponse;
  set ticketCreateResponse(dynamic _value) {
    _ticketCreateResponse = _value;
    prefs.setString('ff_ticketCreateResponse', jsonEncode(_value));
  }

  String _createHorario = '';
  String get createHorario => _createHorario;
  set createHorario(String _value) {
    _createHorario = _value;
    prefs.setString('ff_createHorario', _value);
  }

  dynamic _horariosDisponibles;
  dynamic get horariosDisponibles => _horariosDisponibles;
  set horariosDisponibles(dynamic _value) {
    _horariosDisponibles = _value;
    prefs.setString('ff_horariosDisponibles', jsonEncode(_value));
  }

  dynamic _fechaSeleccionada;
  dynamic get fechaSeleccionada => _fechaSeleccionada;
  set fechaSeleccionada(dynamic _value) {
    _fechaSeleccionada = _value;
    prefs.setString('ff_fechaSeleccionada', jsonEncode(_value));
  }

  String _fechaSap = '';
  String get fechaSap => _fechaSap;
  set fechaSap(String _value) {
    _fechaSap = _value;
    prefs.setString('ff_fechaSap', _value);
  }

  dynamic _ticketDetail;
  dynamic get ticketDetail => _ticketDetail;
  set ticketDetail(dynamic _value) {
    _ticketDetail = _value;
    prefs.setString('ff_ticketDetail', jsonEncode(_value));
  }

  dynamic _userDataBook;
  dynamic get userDataBook => _userDataBook;
  set userDataBook(dynamic _value) {
    _userDataBook = _value;
    prefs.setString('ff_userDataBook', jsonEncode(_value));
  }

  dynamic _stateCode;
  dynamic get stateCode => _stateCode;
  set stateCode(dynamic _value) {
    _stateCode = _value;
    prefs.setString('ff_stateCode', jsonEncode(_value));
  }

  dynamic _TaxTypeCode;
  dynamic get TaxTypeCode => _TaxTypeCode;
  set TaxTypeCode(dynamic _value) {
    _TaxTypeCode = _value;
    prefs.setString('ff_TaxTypeCode', jsonEncode(_value));
  }

  bool _simpleSearch = false;
  bool get simpleSearch => _simpleSearch;
  set simpleSearch(bool _value) {
    _simpleSearch = _value;
    prefs.setBool('ff_simpleSearch', _value);
  }

  DocumentReference? _selectCadena;
  DocumentReference? get selectCadena => _selectCadena;
  set selectCadena(DocumentReference? _value) {
    _selectCadena = _value;
    _value != null
        ? prefs.setString('ff_selectCadena', _value.path)
        : prefs.remove('ff_selectCadena');
  }

  dynamic _ServiceRequestUserLifeCycleStatusCode;
  dynamic get ServiceRequestUserLifeCycleStatusCode =>
      _ServiceRequestUserLifeCycleStatusCode;
  set ServiceRequestUserLifeCycleStatusCode(dynamic _value) {
    _ServiceRequestUserLifeCycleStatusCode = _value;
    prefs.setString(
        'ff_ServiceRequestUserLifeCycleStatusCode', jsonEncode(_value));
  }

  dynamic _usuarioSeleccionado;
  dynamic get usuarioSeleccionado => _usuarioSeleccionado;
  set usuarioSeleccionado(dynamic _value) {
    _usuarioSeleccionado = _value;
    prefs.setString('ff_usuarioSeleccionado', jsonEncode(_value));
  }

  String _userCedula = '';
  String get userCedula => _userCedula;
  set userCedula(String _value) {
    _userCedula = _value;
  }

  String _ingresado = 'ZA';
  String get ingresado => _ingresado;
  set ingresado(String _value) {
    _ingresado = _value;
    prefs.setString('ff_ingresado', _value);
  }

  List<int> _productIdCount = [0];
  List<int> get productIdCount => _productIdCount;
  set productIdCount(List<int> _value) {
    _productIdCount = _value;
  }

  void addToProductIdCount(int _value) {
    _productIdCount.add(_value);
  }

  void removeFromProductIdCount(int _value) {
    _productIdCount.remove(_value);
  }

  void removeAtIndexFromProductIdCount(int _index) {
    _productIdCount.removeAt(_index);
  }

  void updateProductIdCountAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _productIdCount[_index] = updateFn(_productIdCount[_index]);
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  int _indexCodigos = 0;
  int get indexCodigos => _indexCodigos;
  set indexCodigos(int _value) {
    _indexCodigos = _value;
  }

  bool _showFullListRequeriments = true;
  bool get showFullListRequeriments => _showFullListRequeriments;
  set showFullListRequeriments(bool _value) {
    _showFullListRequeriments = _value;
  }

  dynamic _clientInformation;
  dynamic get clientInformation => _clientInformation;
  set clientInformation(dynamic _value) {
    _clientInformation = _value;
    prefs.setString('ff_clientInformation', jsonEncode(_value));
  }

  String _postalCode = '';
  String get postalCode => _postalCode;
  set postalCode(String _value) {
    _postalCode = _value;
    prefs.setString('ff_postalCode', _value);
  }

  dynamic _postalCodeProvincias;
  dynamic get postalCodeProvincias => _postalCodeProvincias;
  set postalCodeProvincias(dynamic _value) {
    _postalCodeProvincias = _value;
  }

  List<String> _parroquiasList = [];
  List<String> get parroquiasList => _parroquiasList;
  set parroquiasList(List<String> _value) {
    _parroquiasList = _value;
  }

  void addToParroquiasList(String _value) {
    _parroquiasList.add(_value);
  }

  void removeFromParroquiasList(String _value) {
    _parroquiasList.remove(_value);
  }

  void removeAtIndexFromParroquiasList(int _index) {
    _parroquiasList.removeAt(_index);
  }

  void updateParroquiasListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _parroquiasList[_index] = updateFn(_parroquiasList[_index]);
  }

  List<String> _nombreRutaActiva = [];
  List<String> get nombreRutaActiva => _nombreRutaActiva;
  set nombreRutaActiva(List<String> _value) {
    _nombreRutaActiva = _value;
  }

  void addToNombreRutaActiva(String _value) {
    _nombreRutaActiva.add(_value);
  }

  void removeFromNombreRutaActiva(String _value) {
    _nombreRutaActiva.remove(_value);
  }

  void removeAtIndexFromNombreRutaActiva(int _index) {
    _nombreRutaActiva.removeAt(_index);
  }

  void updateNombreRutaActivaAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _nombreRutaActiva[_index] = updateFn(_nombreRutaActiva[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
