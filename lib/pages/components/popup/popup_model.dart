import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'popup_widget.dart' show PopupWidget;
import 'package:flutter/material.dart';

class PopupModel extends FlutterFlowModel<PopupWidget> {
  ///  State fields for stateful widgets in this component.

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
  // State field(s) for DropDownLead widget.
  String? dropDownLeadValue;
  FormFieldController<String>? dropDownLeadValueController;
  // State field(s) for DropDownScript widget.
  String? dropDownScriptValue;
  FormFieldController<String>? dropDownScriptValueController;
  // Stores action output result for [Backend Call - API (processAppointment)] action in ButtonUploadAudio widget.
  ApiCallResponse? processappointmentresponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
