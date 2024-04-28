import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'generated_report_widget.dart' show GeneratedReportWidget;
import 'package:flutter/material.dart';


class GeneratedReportModel extends FlutterFlowModel<GeneratedReportWidget> {
  ///  Local state fields for this page.

  List<ChartDataStruct> chartData = [];
  void addToChartData(ChartDataStruct item) => chartData.add(item);
  void removeFromChartData(ChartDataStruct item) => chartData.remove(item);
  void removeAtIndexFromChartData(int index) => chartData.removeAt(index);
  void insertAtIndexInChartData(int index, ChartDataStruct item) =>
      chartData.insert(index, item);
  void updateChartDataAtIndex(int index, Function(ChartDataStruct) updateFn) =>
      chartData[index] = updateFn(chartData[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BedRecord? bedDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
