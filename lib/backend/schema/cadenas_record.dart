import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadenasRecord extends FirestoreRecord {
  CadenasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _code = snapshotData['Code'] as String?;
    _description = snapshotData['Description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cadenas');

  static Stream<CadenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadenasRecord.fromSnapshot(s));

  static Future<CadenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CadenasRecord.fromSnapshot(s));

  static CadenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CadenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadenasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCadenasRecordData({
  String? code,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Code': code,
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}
