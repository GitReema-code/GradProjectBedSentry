import '/flutter_flow/flutter_flow_util.dart';
import 'login_sign_up_widget.dart' show LoginSignUpWidget;
import 'package:flutter/material.dart';

class LoginSignUpModel extends FlutterFlowModel<LoginSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode1;
  TextEditingController? passwordCreateTextController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)?
      passwordCreateTextController1Validator;
  // State field(s) for UserName_Create widget.
  FocusNode? userNameCreateFocusNode;
  TextEditingController? userNameCreateTextController;
  String? Function(BuildContext, String?)?
      userNameCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode2;
  TextEditingController? passwordCreateTextController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)?
      passwordCreateTextController2Validator;
  // State field(s) for Confirm_password_Create widget.
  FocusNode? confirmPasswordCreateFocusNode;
  TextEditingController? confirmPasswordCreateTextController;
  late bool confirmPasswordCreateVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility1 = false;
    passwordCreateVisibility2 = false;
    confirmPasswordCreateVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode1?.dispose();
    passwordCreateTextController1?.dispose();

    userNameCreateFocusNode?.dispose();
    userNameCreateTextController?.dispose();

    passwordCreateFocusNode2?.dispose();
    passwordCreateTextController2?.dispose();

    confirmPasswordCreateFocusNode?.dispose();
    confirmPasswordCreateTextController?.dispose();
  }
}
