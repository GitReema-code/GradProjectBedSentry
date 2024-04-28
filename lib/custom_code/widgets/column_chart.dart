// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';


class ColumnChart extends StatefulWidget {
  const ColumnChart({
    super.key,
    this.width,
    this.height,
    required this.chartData,
  });

  final double? width;
  final double? height;
  final List<ChartDataStruct> chartData;

  @override
  State<ColumnChart> createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
