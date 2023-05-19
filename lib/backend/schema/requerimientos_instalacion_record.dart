import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequerimientosInstalacionRecord extends FirestoreRecord {
  RequerimientosInstalacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Linea" field.
  String? _linea;
  String get linea => _linea ?? '';
  bool hasLinea() => _linea != null;

  // "Producto" field.
  String? _producto;
  String get producto => _producto ?? '';
  bool hasProducto() => _producto != null;

  // "Modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "Proveedor" field.
  String? _proveedor;
  String get proveedor => _proveedor ?? '';
  bool hasProveedor() => _proveedor != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "PeriodoGarantiaGeneral" field.
  String? _periodoGarantiaGeneral;
  String get periodoGarantiaGeneral => _periodoGarantiaGeneral ?? '';
  bool hasPeriodoGarantiaGeneral() => _periodoGarantiaGeneral != null;

  // "GarantiaParticularComponentes" field.
  String? _garantiaParticularComponentes;
  String get garantiaParticularComponentes =>
      _garantiaParticularComponentes ?? '';
  bool hasGarantiaParticularComponentes() =>
      _garantiaParticularComponentes != null;

  // "InstalacionGratuita" field.
  String? _instalacionGratuita;
  String get instalacionGratuita => _instalacionGratuita ?? '';
  bool hasInstalacionGratuita() => _instalacionGratuita != null;

  // "RequerimientosInstalacionesBasicosProducto" field.
  String? _requerimientosInstalacionesBasicosProducto;
  String get requerimientosInstalacionesBasicosProducto =>
      _requerimientosInstalacionesBasicosProducto ?? '';
  bool hasRequerimientosInstalacionesBasicosProducto() =>
      _requerimientosInstalacionesBasicosProducto != null;

  // "AtencionDomicilio" field.
  String? _atencionDomicilio;
  String get atencionDomicilio => _atencionDomicilio ?? '';
  bool hasAtencionDomicilio() => _atencionDomicilio != null;

  // "OtrosServicios" field.
  String? _otrosServicios;
  String get otrosServicios => _otrosServicios ?? '';
  bool hasOtrosServicios() => _otrosServicios != null;

  // "Restricciones" field.
  String? _restricciones;
  String get restricciones => _restricciones ?? '';
  bool hasRestricciones() => _restricciones != null;

  // "ProductCategoryID" field.
  String? _productCategoryID;
  String get productCategoryID => _productCategoryID ?? '';
  bool hasProductCategoryID() => _productCategoryID != null;

  // "ProductID" field.
  int? _productID;
  int get productID => _productID ?? 0;
  bool hasProductID() => _productID != null;

  void _initializeFields() {
    _linea = snapshotData['Linea'] as String?;
    _producto = snapshotData['Producto'] as String?;
    _modelo = snapshotData['Modelo'] as String?;
    _proveedor = snapshotData['Proveedor'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _periodoGarantiaGeneral = snapshotData['PeriodoGarantiaGeneral'] as String?;
    _garantiaParticularComponentes =
        snapshotData['GarantiaParticularComponentes'] as String?;
    _instalacionGratuita = snapshotData['InstalacionGratuita'] as String?;
    _requerimientosInstalacionesBasicosProducto =
        snapshotData['RequerimientosInstalacionesBasicosProducto'] as String?;
    _atencionDomicilio = snapshotData['AtencionDomicilio'] as String?;
    _otrosServicios = snapshotData['OtrosServicios'] as String?;
    _restricciones = snapshotData['Restricciones'] as String?;
    _productCategoryID = snapshotData['ProductCategoryID'] as String?;
    _productID = snapshotData['ProductID'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RequerimientosInstalacion');

  static Stream<RequerimientosInstalacionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RequerimientosInstalacionRecord.fromSnapshot(s));

  static Future<RequerimientosInstalacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RequerimientosInstalacionRecord.fromSnapshot(s));

  static RequerimientosInstalacionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RequerimientosInstalacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequerimientosInstalacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequerimientosInstalacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequerimientosInstalacionRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRequerimientosInstalacionRecordData({
  String? linea,
  String? producto,
  String? modelo,
  String? proveedor,
  String? marca,
  String? periodoGarantiaGeneral,
  String? garantiaParticularComponentes,
  String? instalacionGratuita,
  String? requerimientosInstalacionesBasicosProducto,
  String? atencionDomicilio,
  String? otrosServicios,
  String? restricciones,
  String? productCategoryID,
  int? productID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Linea': linea,
      'Producto': producto,
      'Modelo': modelo,
      'Proveedor': proveedor,
      'Marca': marca,
      'PeriodoGarantiaGeneral': periodoGarantiaGeneral,
      'GarantiaParticularComponentes': garantiaParticularComponentes,
      'InstalacionGratuita': instalacionGratuita,
      'RequerimientosInstalacionesBasicosProducto':
          requerimientosInstalacionesBasicosProducto,
      'AtencionDomicilio': atencionDomicilio,
      'OtrosServicios': otrosServicios,
      'Restricciones': restricciones,
      'ProductCategoryID': productCategoryID,
      'ProductID': productID,
    }.withoutNulls,
  );

  return firestoreData;
}
