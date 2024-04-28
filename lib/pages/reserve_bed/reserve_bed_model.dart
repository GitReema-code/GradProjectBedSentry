import '/flutter_flow/flutter_flow_util.dart';
import 'reserve_bed_widget.dart' show ReserveBedWidget;
import 'package:flutter/material.dart';

class ReserveBedModel extends FlutterFlowModel<ReserveBedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
