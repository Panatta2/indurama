import 'dart:async';

import 'package:collection/collection.dart';

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

  // "CATEGORIA" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "PRODUCTO" field.
  String? _producto;
  String get producto => _producto ?? '';
  bool hasProducto() => _producto != null;

  // "MODELO" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "CODIGOS" field.
  List<String>? _codigos;
  List<String> get codigos => _codigos ?? const [];
  bool hasCodigos() => _codigos != null;

  // "MARCA" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "PerodoGarantiaGeneral" field.
  String? _perodoGarantiaGeneral;
  String get perodoGarantiaGeneral => _perodoGarantiaGeneral ?? '';
  bool hasPerodoGarantiaGeneral() => _perodoGarantiaGeneral != null;

  // "InstalacionGratuitaUnaVez" field.
  String? _instalacionGratuitaUnaVez;
  String get instalacionGratuitaUnaVez => _instalacionGratuitaUnaVez ?? '';
  bool hasInstalacionGratuitaUnaVez() => _instalacionGratuitaUnaVez != null;

  // "RequerimientosBasicosInstalacion" field.
  String? _requerimientosBasicosInstalacion;
  String get requerimientosBasicosInstalacion =>
      _requerimientosBasicosInstalacion ?? '';
  bool hasRequerimientosBasicosInstalacion() =>
      _requerimientosBasicosInstalacion != null;

  // "AtencionDomicilio" field.
  String? _atencionDomicilio;
  String get atencionDomicilio => _atencionDomicilio ?? '';
  bool hasAtencionDomicilio() => _atencionDomicilio != null;

  // "PrestamoProductoReparacionMayor" field.
  String? _prestamoProductoReparacionMayor;
  String get prestamoProductoReparacionMayor =>
      _prestamoProductoReparacionMayor ?? '';
  bool hasPrestamoProductoReparacionMayor() =>
      _prestamoProductoReparacionMayor != null;

  // "OtrosServicios" field.
  String? _otrosServicios;
  String get otrosServicios => _otrosServicios ?? '';
  bool hasOtrosServicios() => _otrosServicios != null;

  // "RESTRICCIONES" field.
  String? _restricciones;
  String get restricciones => _restricciones ?? '';
  bool hasRestricciones() => _restricciones != null;

  // "CodigoCategoria" field.
  String? _codigoCategoria;
  String get codigoCategoria => _codigoCategoria ?? '';
  bool hasCodigoCategoria() => _codigoCategoria != null;

  void _initializeFields() {
    _categoria = snapshotData['CATEGORIA'] as String?;
    _producto = snapshotData['PRODUCTO'] as String?;
    _modelo = snapshotData['MODELO'] as String?;
    _codigos = getDataList(snapshotData['CODIGOS']);
    _marca = snapshotData['MARCA'] as String?;
    _perodoGarantiaGeneral = snapshotData['PerodoGarantiaGeneral'] as String?;
    _instalacionGratuitaUnaVez =
        snapshotData['InstalacionGratuitaUnaVez'] as String?;
    _requerimientosBasicosInstalacion =
        snapshotData['RequerimientosBasicosInstalacion'] as String?;
    _atencionDomicilio = snapshotData['AtencionDomicilio'] as String?;
    _prestamoProductoReparacionMayor =
        snapshotData['PrestamoProductoReparacionMayor'] as String?;
    _otrosServicios = snapshotData['OtrosServicios'] as String?;
    _restricciones = snapshotData['RESTRICCIONES'] as String?;
    _codigoCategoria = snapshotData['CodigoCategoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requerimientosInstalacion');

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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequerimientosInstalacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequerimientosInstalacionRecordData({
  String? categoria,
  String? producto,
  String? modelo,
  String? marca,
  String? perodoGarantiaGeneral,
  String? instalacionGratuitaUnaVez,
  String? requerimientosBasicosInstalacion,
  String? atencionDomicilio,
  String? prestamoProductoReparacionMayor,
  String? otrosServicios,
  String? restricciones,
  String? codigoCategoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CATEGORIA': categoria,
      'PRODUCTO': producto,
      'MODELO': modelo,
      'MARCA': marca,
      'PerodoGarantiaGeneral': perodoGarantiaGeneral,
      'InstalacionGratuitaUnaVez': instalacionGratuitaUnaVez,
      'RequerimientosBasicosInstalacion': requerimientosBasicosInstalacion,
      'AtencionDomicilio': atencionDomicilio,
      'PrestamoProductoReparacionMayor': prestamoProductoReparacionMayor,
      'OtrosServicios': otrosServicios,
      'RESTRICCIONES': restricciones,
      'CodigoCategoria': codigoCategoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequerimientosInstalacionRecordDocumentEquality
    implements Equality<RequerimientosInstalacionRecord> {
  const RequerimientosInstalacionRecordDocumentEquality();

  @override
  bool equals(RequerimientosInstalacionRecord? e1,
      RequerimientosInstalacionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoria == e2?.categoria &&
        e1?.producto == e2?.producto &&
        e1?.modelo == e2?.modelo &&
        listEquality.equals(e1?.codigos, e2?.codigos) &&
        e1?.marca == e2?.marca &&
        e1?.perodoGarantiaGeneral == e2?.perodoGarantiaGeneral &&
        e1?.instalacionGratuitaUnaVez == e2?.instalacionGratuitaUnaVez &&
        e1?.requerimientosBasicosInstalacion ==
            e2?.requerimientosBasicosInstalacion &&
        e1?.atencionDomicilio == e2?.atencionDomicilio &&
        e1?.prestamoProductoReparacionMayor ==
            e2?.prestamoProductoReparacionMayor &&
        e1?.otrosServicios == e2?.otrosServicios &&
        e1?.restricciones == e2?.restricciones &&
        e1?.codigoCategoria == e2?.codigoCategoria;
  }

  @override
  int hash(RequerimientosInstalacionRecord? e) => const ListEquality().hash([
        e?.categoria,
        e?.producto,
        e?.modelo,
        e?.codigos,
        e?.marca,
        e?.perodoGarantiaGeneral,
        e?.instalacionGratuitaUnaVez,
        e?.requerimientosBasicosInstalacion,
        e?.atencionDomicilio,
        e?.prestamoProductoReparacionMayor,
        e?.otrosServicios,
        e?.restricciones,
        e?.codigoCategoria
      ]);

  @override
  bool isValidKey(Object? o) => o is RequerimientosInstalacionRecord;
}
