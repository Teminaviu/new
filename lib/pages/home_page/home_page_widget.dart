import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/container_actions_widget/container_actions_widget_widget.dart';
import '/pages/components/popup/popup_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().Token != '') {
        _model.geUserResponse = await BubbleGetCurrentUserCall.call(
          userId: FFAppState().userid,
          token: FFAppState().Token,
        );

        if ((_model.geUserResponse?.succeeded ?? true)) {
          FFAppState().firstName = getJsonField(
            (_model.geUserResponse?.jsonBody ?? ''),
            r'''$.response['First Name']''',
          ).toString().toString();
          FFAppState().CompanyList = (getJsonField(
            (_model.geUserResponse?.jsonBody ?? ''),
            r'''$.response.Companies''',
            true,
          ) as List)
              .map<String>((s) => s.toString())
              .toList()
              .toList()
              .cast<String>();
          FFAppState().LeadIDList = (getJsonField(
            (_model.geUserResponse?.jsonBody ?? ''),
            r'''$.response['My Leads']''',
            true,
          ) as List)
              .map<String>((s) => s.toString())
              .toList()
              .toList()
              .cast<String>();
          safeSetState(() {});
        } else {
          context.pushNamed(Auth1Widget.routeName);
        }
      } else {
        context.pushNamed(Auth1Widget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Builder(
                    builder: (context) {
                      if (!_model.isRecordimg) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Good Morning, ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  FFAppState().firstName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Record and Upload sales calls',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          await authManager.signOut();
                                          GoRouter.of(context)
                                              .clearRedirectLocation();

                                          context.goNamedAuth(
                                              Auth1Widget.routeName,
                                              context.mounted);
                                        },
                                        child: Icon(
                                          Icons.logout_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        wrapWithModel(
                                          model: _model
                                              .containerActionsWidgetModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ContainerActionsWidgetWidget(
                                            imageWidget:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/morestarts-ksavk9/assets/tw8k7beq5dxj/Button_(10).png',
                                            title: 'RECORD AUDIO',
                                            subtitle:
                                                'Start recording your appointment',
                                            btnTitle: 'Start recording',
                                            btnIcon: Icon(
                                              Icons.mic_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            action: () async {
                                              await requestPermission(
                                                  microphonePermission);
                                              if (await getPermissionStatus(
                                                  microphonePermission)) {
                                                _model.isRecordimg = true;
                                                safeSetState(() {});
                                                await startAudioRecording(
                                                  context,
                                                  audioRecorder:
                                                      _model.audioRecorder ??=
                                                          AudioRecorder(),
                                                );
                                              } else {
                                                return;
                                              }
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model
                                              .containerActionsWidgetModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ContainerActionsWidgetWidget(
                                            imageWidget:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/morestarts-ksavk9/assets/4hfxljwgj79y/Button_(11).png',
                                            title: 'UPLOAD AUDIO',
                                            subtitle:
                                                'Upload the audio file of your appointment',
                                            btnTitle: 'Upload',
                                            btnIcon: Icon(
                                              Icons.cloud_upload_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            action: () async {
                                              final selectedFiles =
                                                  await selectFiles(
                                                multiFile: false,
                                              );
                                              if (selectedFiles != null) {
                                                safeSetState(() => _model
                                                    .isDataUploading = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                try {
                                                  selectedUploadedFiles =
                                                      selectedFiles
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                              ))
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                        .length ==
                                                    selectedFiles.length) {
                                                  safeSetState(() {
                                                    _model.uploadedLocalFile =
                                                        selectedUploadedFiles
                                                            .first;
                                                  });
                                                } else {
                                                  safeSetState(() {});
                                                  return;
                                                }
                                              }

                                              _model.uploadaudiourlCopy =
                                                  await FlutterFlowAWSS3ApiFlowAPIGroup
                                                      .uploadFileToBucketCall
                                                      .call(
                                                bucket: 'morestarts',
                                                name: 'angel',
                                                days: '7',
                                                file: _model.uploadedLocalFile,
                                              );

                                              FFAppState().mainUrl =
                                                  getJsonField(
                                                (_model.uploadaudiourlCopy
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.link''',
                                              ).toString();
                                              safeSetState(() {});
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: Container(
                                                        height: 700.0,
                                                        child: PopupWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));

                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ]
                                          .divide(SizedBox(height: 20.0))
                                          .around(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.isRecordimg = false;
                                      safeSetState(() {});
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Lottie.network(
                                'https://lottie.host/bbd171e5-679c-405a-a09d-721c6d47a66a/x4VBOnaY4E.json',
                                width: 192.0,
                                height: 130.0,
                                fit: BoxFit.cover,
                                animate: true,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await stopAudioRecording(
                                        audioRecorder: _model.audioRecorder,
                                        audioName: 'recordedFileBytes',
                                        onRecordingComplete:
                                            (audioFilePath, audioBytes) {
                                          _model.morestartsAudio =
                                              audioFilePath;
                                          _model.recordedFileBytes = audioBytes;
                                        },
                                      );

                                      _model.convertedaudio =
                                          await actions.convertAudioFileToBytes(
                                        _model.morestartsAudio!,
                                      );
                                      _model.audirecordingourl =
                                          await FlutterFlowAWSS3ApiFlowAPIGroup
                                              .uploadFileToBucketCall
                                              .call(
                                        bucket: 'morestarts',
                                        file: _model.recordedFileBytes,
                                        name: 'adrenalin',
                                        days: '7',
                                      );

                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: Container(
                                                height: 700.0,
                                                child: PopupWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      _model.isRecordimg = false;
                                      safeSetState(() {});
                                      FFAppState().mainUrl = getJsonField(
                                        (_model.audirecordingourl?.jsonBody ??
                                            ''),
                                        r'''$.link''',
                                      ).toString();
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    text: 'Stop Recording',
                                    icon: Icon(
                                      Icons.stop_circle_outlined,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
