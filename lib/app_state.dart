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
    if (prefs.containsKey('ff_jsonSearch')) {
      try {
        _jsonSearch = jsonDecode(prefs.getString('ff_jsonSearch') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _role = prefs.getString('ff_role') ?? _role;
    _cadena = prefs.getString('ff_cadena') ?? _cadena;
    _selectCadena = prefs.getString('ff_selectCadena')?.ref ?? _selectCadena;
    _selectRole = prefs.getString('ff_selectRole')?.ref ?? _selectRole;
    _admin = prefs.getString('ff_admin') ?? _admin;
    if (prefs.containsKey('ff_cadenas')) {
      try {
        _cadenas = jsonDecode(prefs.getString('ff_cadenas') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _tickets = prefs.getBool('ff_tickets') ?? _tickets;
    if (prefs.containsKey('ff_ProcessingTypeCode')) {
      try {
        _ProcessingTypeCode =
            jsonDecode(prefs.getString('ff_ProcessingTypeCode') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_Gatantias')) {
      try {
        _Gatantias = jsonDecode(prefs.getString('ff_Gatantias') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_Cobertura')) {
      try {
        _Cobertura = jsonDecode(prefs.getString('ff_Cobertura') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_ticketStatus')) {
      try {
        _ticketStatus = jsonDecode(prefs.getString('ff_ticketStatus') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_getPais')) {
      try {
        _getPais = jsonDecode(prefs.getString('ff_getPais') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_territorios')) {
      try {
        _territorios = jsonDecode(prefs.getString('ff_territorios') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _skiptoken = prefs.getInt('ff_skiptoken') ?? _skiptoken;
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

  DocumentReference? _selectCadena;
  DocumentReference? get selectCadena => _selectCadena;
  set selectCadena(DocumentReference? _value) {
    _selectCadena = _value;
    _value != null
        ? prefs.setString('ff_selectCadena', _value.path)
        : prefs.remove('ff_selectCadena');
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

  bool _selectInstalacion = false;
  bool get selectInstalacion => _selectInstalacion;
  set selectInstalacion(bool _value) {
    _selectInstalacion = _value;
  }

  bool _selectReparacion = false;
  bool get selectReparacion => _selectReparacion;
  set selectReparacion(bool _value) {
    _selectReparacion = _value;
  }

  bool _typeClient = false;
  bool get typeClient => _typeClient;
  set typeClient(bool _value) {
    _typeClient = _value;
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
    Function(dynamic) updateFn,
  ) {
    updateFn(_provincias[_index]);
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
    Function(String) updateFn,
  ) {
    updateFn(_provinciasNames[_index]);
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
