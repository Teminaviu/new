import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/popup_add_new_lead/popup_add_new_lead_widget.dart';
import '/pages/components/scoring_popup/scoring_popup_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popup_model.dart';
export 'popup_model.dart';

class PopupWidget extends StatefulWidget {
  const PopupWidget({super.key});

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  late PopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupModel());

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
        height: 500.0,
        constraints: BoxConstraints(
          maxHeight: 500.0,
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
                      'assets/images/Featured_icon_(14).svg',
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
              Text(
                'Please assign the recording to a lead',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyLargeFamily),
                    ),
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
                      _model.dropDownCompanyValue ??= '[]',
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
                    'Lead',
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
                    controller: _model.dropDownLeadValueController ??=
                        FormFieldController<String>(
                      _model.dropDownLeadValue ??= '[]',
                    ),
                    options: List<String>.from((getJsonField(
                      FFAppState().leadList,
                      r'''$.response.results[*]._id''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()),
                    optionLabels: (getJsonField(
                      FFAppState().leadList,
                      r'''$.response.results[*].Name''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList(),
                    onChanged: (val) =>
                        safeSetState(() => _model.dropDownLeadValue = val),
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
                    hintText: 'Select Lead',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
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
                              child: PopupAddNewLeadWidget(),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                  ),
                  Text(
                    'Create Lead',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Script',
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
                    controller: _model.dropDownScriptValueController ??=
                        FormFieldController<String>(null),
                    options: List<String>.from((getJsonField(
                      FFAppState().listofScripts,
                      r'''$.response.results[:]._id''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()),
                    optionLabels: (getJsonField(
                      FFAppState().listofScripts,
                      r'''$.response.results[:].Name''',
                      true,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList(),
                    onChanged: (val) =>
                        safeSetState(() => _model.dropDownScriptValue = val),
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
                    hintText: 'Select Script',
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
              FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    useSafeArea: true,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: Container(
                          height: 500.0,
                          child: ScoringPopupWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));

                  _model.processappointmentresponse =
                      await ProcessAppointmentCall.call(
                    script: _model.dropDownScriptValue,
                    url: FFAppState().mainUrl,
                    lead: _model.dropDownLeadValue,
                    token: currentAuthenticationToken,
                    userId: currentUserUid,
                  );

                  safeSetState(() {});
                },
                text: 'Upload Audio',
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
