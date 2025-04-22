import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'auth1_widget.dart' show Auth1Widget;
import 'package:flutter/material.dart';

class Auth1Model extends FlutterFlowModel<Auth1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Bubble Sign In)] action in Button widget.
  ApiCallResponse? signInResponse;
  // Stores action output result for [Backend Call - API (Bubble Get Current User)] action in Button widget.
  ApiCallResponse? geUserResponse;
  // Stores action output result for [Custom Action - generateCompanyConstraint] action in Button widget.
  String? leadconstraintoutput;
  // Stores action output result for [Backend Call - API (Get Leads)] action in Button widget.
  ApiCallResponse? getLeadResponse;
  // Stores action output result for [Custom Action - generateCompanyConstraint] action in Button widget.
  String? constraintResponse;
  // Stores action output result for [Backend Call - API (Get Companies)] action in Button widget.
  ApiCallResponse? getComapniesResponse;
  // State field(s) for firstname_Create widget.
  FocusNode? firstnameCreateFocusNode;
  TextEditingController? firstnameCreateTextController;
  String? Function(BuildContext, String?)?
      firstnameCreateTextControllerValidator;
  // State field(s) for Lastname_Create widget.
  FocusNode? lastnameCreateFocusNode;
  TextEditingController? lastnameCreateTextController;
  String? Function(BuildContext, String?)?
      lastnameCreateTextControllerValidator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm_create widget.
  FocusNode? passwordConfirmCreateFocusNode;
  TextEditingController? passwordConfirmCreateTextController;
  late bool passwordConfirmCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCreateTextControllerValidator;
  // State field(s) for invite_code widget.
  FocusNode? inviteCodeFocusNode;
  TextEditingController? inviteCodeTextController;
  String? Function(BuildContext, String?)? inviteCodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Bubble Sign Up)] action in Button widget.
  ApiCallResponse? apiResult4hr;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmCreateVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    firstnameCreateFocusNode?.dispose();
    firstnameCreateTextController?.dispose();

    lastnameCreateFocusNode?.dispose();
    lastnameCreateTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmCreateFocusNode?.dispose();
    passwordConfirmCreateTextController?.dispose();

    inviteCodeFocusNode?.dispose();
    inviteCodeTextController?.dispose();
  }
}
