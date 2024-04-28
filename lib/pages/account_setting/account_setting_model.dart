import '/flutter_flow/flutter_flow_util.dart';
import 'account_setting_widget.dart' show AccountSettingWidget;
import 'package:flutter/material.dart';


class AccountSettingModel extends FlutterFlowModel<AccountSettingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
