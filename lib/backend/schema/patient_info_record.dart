import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientInfoRecord extends FirestoreRecord {
  PatientInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "phoneNo" field.
  String? _phoneNo;
  String get phoneNo => _phoneNo ?? '';
  bool hasPhoneNo() => _phoneNo != null;

  // "bedNo" field.
  int? _bedNo;
  int get bedNo => _bedNo ?? 0;
  bool hasBedNo() => _bedNo != null;

  // "remainingTime" field.
  int? _remainingTime;
  int get remainingTime => _remainingTime ?? 0;
  bool hasRemainingTime() => _remainingTime != null;

  // "enteredTime" field.
  String? _enteredTime;
  String get enteredTime => _enteredTime ?? '';
  bool hasEnteredTime() => _enteredTime != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _phoneNo = snapshotData['phoneNo'] as String?;
    _bedNo = castToType<int>(snapshotData['bedNo']);
    _remainingTime = castToType<int>(snapshotData['remainingTime']);
    _enteredTime = snapshotData['enteredTime'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PatientInfo');

  static Stream<PatientInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientInfoRecord.fromSnapshot(s));

  static Future<PatientInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PatientInfoRecord.fromSnapshot(s));

  static PatientInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientInfoRecordData({
  String? name,
  int? age,
  String? gender,
  String? phoneNo,
  int? bedNo,
  int? remainingTime,
  String? enteredTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'age': age,
      'gender': gender,
      'phoneNo': phoneNo,
      'bedNo': bedNo,
      'remainingTime': remainingTime,
      'enteredTime': enteredTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientInfoRecordDocumentEquality implements Equality<PatientInfoRecord> {
  const PatientInfoRecordDocumentEquality();

  @override
  bool equals(PatientInfoRecord? e1, PatientInfoRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.phoneNo == e2?.phoneNo &&
        e1?.bedNo == e2?.bedNo &&
        e1?.remainingTime == e2?.remainingTime &&
        e1?.enteredTime == e2?.enteredTime;
  }

  @override
  int hash(PatientInfoRecord? e) => const ListEquality().hash([
        e?.name,
        e?.age,
        e?.gender,
        e?.phoneNo,
        e?.bedNo,
        e?.remainingTime,
        e?.enteredTime
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientInfoRecord;
}
