import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'popup_add_new_lead_widget.dart' show PopupAddNewLeadWidget;
import 'package:flutter/material.dart';

class PopupAddNewLeadModel extends FlutterFlowModel<PopupAddNewLeadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for leadName widget.
  FocusNode? leadNameFocusNode;
  TextEditingController? leadNameTextController;
  String? Function(BuildContext, String?)? leadNameTextControllerValidator;
  // State field(s) for DropDownCompany widget.
  String? dropDownCompanyValue;
  FormFieldController<String>? dropDownCompanyValueController;
  // Stores action output result for [Custom Action - generateCompanyConstraint] action in DropDownCompany widget.
  String? filtercompanyresponse;
  // Stores action output result for [Backend Call - API (Get Companies)] action in DropDownCompany widget.
  ApiCallResponse? getcompanyresponse;
  // Stores action output result for [Custom Action - generateCompanyConstraint] action in DropDownCompany widget.
  String? filterscriptresponse;
  // Stores action output result for [Backend Call - API (Get Scripts)] action in DropDownCompany widget.
  ApiCallResponse? getscriptResponse;
  // State field(s) for leademailAddress widget.
  FocusNode? leademailAddressFocusNode;
  TextEditingController? leademailAddressTextController;
  String? Function(BuildContext, String?)?
      leademailAddressTextControllerValidator;
  // State field(s) for leadBirthday widget.
  FocusNode? leadBirthdayFocusNode;
  TextEditingController? leadBirthdayTextController;
  String? Function(BuildContext, String?)? leadBirthdayTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create Lead)] action in ButtonAddLead widget.
  ApiCallResponse? createLeadResponse;
  // Stores action output result for [Backend Call - API (Bubble Get Current User)] action in ButtonAddLead widget.
  ApiCallResponse? getcurrentuserresponse;
  // Stores action output result for [Custom Action - generateCompanyConstraint] action in ButtonAddLead widget.
  String? leadconstraintoutput2;
  // Stores action output result for [Backend Call - API (Get Leads)] action in ButtonAddLead widget.
  ApiCallResponse? getLeadResponse2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    leadNameFocusNode?.dispose();
    leadNameTextController?.dispose();

    leademailAddressFocusNode?.dispose();
    leademailAddressTextController?.dispose();

    leadBirthdayFocusNode?.dispose();
    leadBirthdayTextController?.dispose();
  }
}
