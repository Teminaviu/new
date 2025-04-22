import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/popup2/popup2_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popup_add_new_lead_model.dart';
export 'popup_add_new_lead_model.dart';

class PopupAddNewLeadWidget extends StatefulWidget {
  const PopupAddNewLeadWidget({super.key});

  @override
  State<PopupAddNewLeadWidget> createState() => _PopupAddNewLeadWidgetState();
}

class _PopupAddNewLeadWidgetState extends State<PopupAddNewLeadWidget> {
  late PopupAddNewLeadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupAddNewLeadModel());

    _model.leadNameTextController ??= TextEditingController();
    _model.leadNameFocusNode ??= FocusNode();

    _model.leademailAddressTextController ??= TextEditingController();
    _model.leademailAddressFocusNode ??= FocusNode();

    _model.leadBirthdayTextController ??= TextEditingController();
    _model.leadBirthdayFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        width: 360.0,
        height: 600.0,
        constraints: BoxConstraints(
          maxHeight: 700.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Featured_icon_(15).svg',
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          'Add Lead',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleLargeFamily),
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Input the details of the new lead below',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Name*',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  ),
                  Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.leadNameTextController,
                      focusNode: _model.leadNameFocusNode,
                      autofocus: true,
                      autofillHints: [AutofillHints.name],
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Enter lead name',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      keyboardType: TextInputType.name,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.leadNameTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyLargeFamily),
                        ),
                  ),
                  FlutterFlowDropDown<String>(
                    controller: _model.dropDownCompanyValueController ??=
                        FormFieldController<String>(
                      _model.dropDownCompanyValue ??= FFAppState()
                          .currentCompany
                          .unique((e) => e)
                          .firstOrNull,
                    ),
                    options: List<String>.from((getJsonField(
                      FFAppState().listofcompanies,
                      r'''$.response.results[:]._id''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()),
                    optionLabels: (getJsonField(
                      FFAppState().listofcompanies,
                      r'''$.response.results[:].Name''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList(),
                    onChanged: (val) async {
                      safeSetState(() => _model.dropDownCompanyValue = val);
                      FFAppState().currentCompany = [];
                      safeSetState(() {});
                      FFAppState()
                          .addToCurrentCompany(_model.dropDownCompanyValue!);
                      FFAppState().update(() {});
                      _model.filtercompanyresponse =
                          await actions.generateCompanyConstraint(
                        FFAppState().currentCompany.toList(),
                      );
                      FFAppState().scriptConstraint =
                          _model.filtercompanyresponse!;
                      safeSetState(() {});
                      _model.getcompanyresponse = await GetCompaniesCall.call(
                        token: currentAuthenticationToken,
                        userId: currentUserUid,
                        constraints: _model.filtercompanyresponse,
                      );

                      if ((_model.getcompanyresponse?.succeeded ?? true)) {
                        FFAppState().ScriptList = (getJsonField(
                          (_model.getcompanyresponse?.jsonBody ?? ''),
                          r'''$.response.results[0]['Available Appointment Types (Scripts)']''',
                          true,
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList()
                            .toList()
                            .cast<String>();
                        safeSetState(() {});
                        _model.filterscriptresponse =
                            await actions.generateCompanyConstraint(
                          FFAppState().ScriptList.toList(),
                        );
                        _model.getscriptResponse = await GetScriptsCall.call(
                          token: currentAuthenticationToken,
                          userId: currentUserUid,
                          constraints: _model.filterscriptresponse,
                        );

                        if ((_model.getscriptResponse?.succeeded ?? true)) {
                          FFAppState().listofScripts =
                              (_model.getscriptResponse?.jsonBody ?? '');
                          safeSetState(() {});
                        }
                      }

                      safeSetState(() {});
                    },
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 40.0,
                    textStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelMediumFamily),
                        ),
                    hintText: 'Select Company',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 1.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  ),
                  Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.leademailAddressTextController,
                      focusNode: _model.leademailAddressFocusNode,
                      autofocus: true,
                      autofillHints: [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Enter lead email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.leademailAddressTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Birthday',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  ),
                  Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.leadBirthdayTextController,
                      focusNode: _model.leadBirthdayFocusNode,
                      autofocus: true,
                      autofillHints: [AutofillHints.birthdayDay],
                      obscureText: false,
                      decoration: InputDecoration(
                        alignLabelWithHint: false,
                        hintText: 'MM/DD/YYYY',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.leadBirthdayTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              FFButtonWidget(
                onPressed: () async {
                  _model.createLeadResponse = await CreateLeadCall.call(
                    email: _model.leademailAddressTextController.text,
                    leadowner: currentUserUid,
                    name: _model.leadNameTextController.text,
                    token: currentAuthenticationToken,
                    userId: currentUserUid,
                    birthday: _model.leadBirthdayTextController.text,
                    company: _model.dropDownCompanyValue,
                  );

                  if ((_model.createLeadResponse?.succeeded ?? true)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Lead successfully created',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                    _model.getcurrentuserresponse =
                        await BubbleGetCurrentUserCall.call(
                      userId: currentUserUid,
                      token: currentAuthenticationToken,
                    );

                    FFAppState().LeadIDList = (getJsonField(
                      (_model.getcurrentuserresponse?.jsonBody ?? ''),
                      r'''$.response['My Leads']''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()
                        .toList()
                        .cast<String>();
                    safeSetState(() {});
                    _model.leadconstraintoutput2 =
                        await actions.generateCompanyConstraint(
                      FFAppState().LeadIDList.toList(),
                    );
                    _model.getLeadResponse2 = await GetLeadsCall.call(
                      token: currentAuthenticationToken,
                      userId: currentUserUid,
                      constraints: _model.leadconstraintoutput2,
                    );

                    FFAppState().leadList = null;
                    safeSetState(() {});
                    FFAppState().leadList =
                        (_model.getLeadResponse2?.jsonBody ?? '');
                    safeSetState(() {});
                    Navigator.pop(context);
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: Container(
                            height: 700.0,
                            child: Popup2Widget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  }

                  safeSetState(() {});
                },
                text: 'Add',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ]
                .divide(SizedBox(height: 16.0))
                .addToStart(SizedBox(height: 24.0))
                .addToEnd(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
