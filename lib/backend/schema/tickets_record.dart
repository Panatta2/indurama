import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsRecord extends FirestoreRecord {
  TicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ticket" field.
  String? _ticket;
  String get ticket => _ticket ?? '';
  bool hasTicket() => _ticket != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "fechaDisponible" field.
  String? _fechaDisponible;
  String get fechaDisponible => _fechaDisponible ?? '';
  bool hasFechaDisponible() => _fechaDisponible != null;

  // "obeservacion" field.
  String? _obeservacion;
  String get obeservacion => _obeservacion ?? '';
  bool hasObeservacion() => _obeservacion != null;

  // "observacionAsesor" field.
  String? _observacionAsesor;
  String get observacionAsesor => _observacionAsesor ?? '';
  bool hasObservacionAsesor() => _observacionAsesor != null;

  // "cadena" field.
  String? _cadena;
  String get cadena => _cadena ?? '';
  bool hasCadena() => _cadena != null;

  void _initializeFields() {
    _ticket = snapshotData['ticket'] as String?;
    _status = snapshotData['status'] as String?;
    _fechaDisponible = snapshotData['fechaDisponible'] as String?;
    _obeservacion = snapshotData['obeservacion'] as String?;
    _observacionAsesor = snapshotData['observacionAsesor'] as String?;
    _cadena = snapshotData['cadena'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tickets');

  static Stream<TicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsRecord.fromSnapshot(s));

  static Future<TicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketsRecord.fromSnapshot(s));

  static TicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsRecordData({
  String? ticket,
  String? status,
  String? fechaDisponible,
  String? obeservacion,
  String? observacionAsesor,
  String? cadena,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ticket': ticket,
      'status': status,
      'fechaDisponible': fechaDisponible,
      'obeservacion': obeservacion,
      'observacionAsesor': observacionAsesor,
      'cadena': cadena,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsRecordDocumentEquality implements Equality<TicketsRecord> {
  const TicketsRecordDocumentEquality();

  @override
  bool equals(TicketsRecord? e1, TicketsRecord? e2) {
    return e1?.ticket == e2?.ticket &&
        e1?.status == e2?.status &&
        e1?.fechaDisponible == e2?.fechaDisponible &&
        e1?.obeservacion == e2?.obeservacion &&
        e1?.observacionAsesor == e2?.observacionAsesor &&
        e1?.cadena == e2?.cadena;
  }

  @override
  int hash(TicketsRecord? e) => const ListEquality().hash([
        e?.ticket,
        e?.status,
        e?.fechaDisponible,
        e?.obeservacion,
        e?.observacionAsesor,
        e?.cadena
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsRecord;
}
