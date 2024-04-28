// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataStruct extends FFFirebaseStruct {
  ChartDataStruct({
    String? xTitle,
    bool? yValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xTitle = xTitle,
        _yValue = yValue,
        super(firestoreUtilData);

  // "xTitle" field.
  String? _xTitle;
  String get xTitle => _xTitle ?? '';
  set xTitle(String? val) => _xTitle = val;
  bool hasXTitle() => _xTitle != null;

  // "yValue" field.
  bool? _yValue;
  bool get yValue => _yValue ?? true;
  set yValue(bool? val) => _yValue = val;
  bool hasYValue() => _yValue != null;

  static ChartDataStruct fromMap(Map<String, dynamic> data) => ChartDataStruct(
        xTitle: data['xTitle'] as String?,
        yValue: data['yValue'] as bool?,
      );

  static ChartDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xTitle': _xTitle,
        'yValue': _yValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xTitle': serializeParam(
          _xTitle,
          ParamType.String,
        ),
        'yValue': serializeParam(
          _yValue,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartDataStruct(
        xTitle: deserializeParam(
          data['xTitle'],
          ParamType.String,
          false,
        ),
        yValue: deserializeParam(
          data['yValue'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataStruct &&
        xTitle == other.xTitle &&
        yValue == other.yValue;
  }

  @override
  int get hashCode => const ListEquality().hash([xTitle, yValue]);
}

ChartDataStruct createChartDataStruct({
  String? xTitle,
  bool? yValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartDataStruct(
      xTitle: xTitle,
      yValue: yValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartDataStruct? updateChartDataStruct(
  ChartDataStruct? chartData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartDataStructData(
  Map<String, dynamic> firestoreData,
  ChartDataStruct? chartData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartData == null) {
    return;
  }
  if (chartData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartDataData = getChartDataFirestoreData(chartData, forFieldValue);
  final nestedData = chartDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartDataFirestoreData(
  ChartDataStruct? chartData, [
  bool forFieldValue = false,
]) {
  if (chartData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartData.toMap());

  // Add any Firestore field values
  chartData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartDataListFirestoreData(
  List<ChartDataStruct>? chartDatas,
) =>
    chartDatas?.map((e) => getChartDataFirestoreData(e, true)).toList() ?? [];
