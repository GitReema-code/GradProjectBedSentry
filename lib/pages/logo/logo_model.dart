import '/flutter_flow/flutter_flow_util.dart';
import 'logo_widget.dart' show LogoWidget;
import 'package:flutter/material.dart';

class LogoModel extends FlutterFlowModel<LogoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
