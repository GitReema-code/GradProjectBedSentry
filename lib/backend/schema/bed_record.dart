import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BedRecord extends FirestoreRecord {
  BedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bedNo" field.
  int? _bedNo;
  int get bedNo => _bedNo ?? 0;
  bool hasBedNo() => _bedNo != null;

  // "isOccupied" field.
  bool? _isOccupied;
  bool get isOccupied => _isOccupied ?? false;
  bool hasIsOccupied() => _isOccupied != null;

  // "medicalStaff" field.
  DocumentReference? _medicalStaff;
  DocumentReference? get medicalStaff => _medicalStaff;
  bool hasMedicalStaff() => _medicalStaff != null;

  void _initializeFields() {
    _bedNo = castToType<int>(snapshotData['bedNo']);
    _isOccupied = snapshotData['isOccupied'] as bool?;
    _medicalStaff = snapshotData['medicalStaff'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bed');

  static Stream<BedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BedRecord.fromSnapshot(s));

  static Future<BedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BedRecord.fromSnapshot(s));

  static BedRecord fromSnapshot(DocumentSnapshot snapshot) => BedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBedRecordData({
  int? bedNo,
  bool? isOccupied,
  DocumentReference? medicalStaff,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bedNo': bedNo,
      'isOccupied': isOccupied,
      'medicalStaff': medicalStaff,
    }.withoutNulls,
  );

  return firestoreData;
}

class BedRecordDocumentEquality implements Equality<BedRecord> {
  const BedRecordDocumentEquality();

  @override
  bool equals(BedRecord? e1, BedRecord? e2) {
    return e1?.bedNo == e2?.bedNo &&
        e1?.isOccupied == e2?.isOccupied &&
        e1?.medicalStaff == e2?.medicalStaff;
  }

  @override
  int hash(BedRecord? e) =>
      const ListEquality().hash([e?.bedNo, e?.isOccupied, e?.medicalStaff]);

  @override
  bool isValidKey(Object? o) => o is BedRecord;
}
