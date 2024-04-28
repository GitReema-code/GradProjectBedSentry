// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? reyof,
    String? rema,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reyof = reyof,
        _rema = rema,
        super(firestoreUtilData);

  // "Reyof" field.
  String? _reyof;
  String get reyof => _reyof ?? '';
  set reyof(String? val) => _reyof = val;
  bool hasReyof() => _reyof != null;

  // "Rema" field.
  String? _rema;
  String get rema => _rema ?? '';
  set rema(String? val) => _rema = val;
  bool hasRema() => _rema != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        reyof: data['Reyof'] as String?,
        rema: data['Rema'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Reyof': _reyof,
        'Rema': _rema,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Reyof': serializeParam(
          _reyof,
          ParamType.String,
        ),
        'Rema': serializeParam(
          _rema,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        reyof: deserializeParam(
          data['Reyof'],
          ParamType.String,
          false,
        ),
        rema: deserializeParam(
          data['Rema'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct && reyof == other.reyof && rema == other.rema;
  }

  @override
  int get hashCode => const ListEquality().hash([reyof, rema]);
}

UserStruct createUserStruct({
  String? reyof,
  String? rema,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      reyof: reyof,
      rema: rema,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
