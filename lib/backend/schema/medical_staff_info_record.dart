import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicalStaffInfoRecord extends FirestoreRecord {
  MedicalStaffInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "phoneNo" field.
  String? _phoneNo;
  String get phoneNo => _phoneNo ?? '';
  bool hasPhoneNo() => _phoneNo != null;

  // "idNo" field.
  int? _idNo;
  int get idNo => _idNo ?? 0;
  bool hasIdNo() => _idNo != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _gender = snapshotData['gender'] as String?;
    _phoneNo = snapshotData['phoneNo'] as String?;
    _idNo = castToType<int>(snapshotData['idNo']);
    _password = snapshotData['password'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MedicalStaffInfo');

  static Stream<MedicalStaffInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicalStaffInfoRecord.fromSnapshot(s));

  static Future<MedicalStaffInfoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MedicalStaffInfoRecord.fromSnapshot(s));

  static MedicalStaffInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicalStaffInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicalStaffInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicalStaffInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicalStaffInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicalStaffInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicalStaffInfoRecordData({
  String? name,
  String? gender,
  String? phoneNo,
  int? idNo,
  String? password,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'gender': gender,
      'phoneNo': phoneNo,
      'idNo': idNo,
      'password': password,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicalStaffInfoRecordDocumentEquality
    implements Equality<MedicalStaffInfoRecord> {
  const MedicalStaffInfoRecordDocumentEquality();

  @override
  bool equals(MedicalStaffInfoRecord? e1, MedicalStaffInfoRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.gender == e2?.gender &&
        e1?.phoneNo == e2?.phoneNo &&
        e1?.idNo == e2?.idNo &&
        e1?.password == e2?.password &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(MedicalStaffInfoRecord? e) => const ListEquality().hash([
        e?.name,
        e?.gender,
        e?.phoneNo,
        e?.idNo,
        e?.password,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicalStaffInfoRecord;
}
