import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/container_actions_widget/container_actions_widget_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isRecordimg = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Bubble Get Current User)] action in HomePage widget.
  ApiCallResponse? geUserResponse;
  // Model for container_actions_widget component.
  late ContainerActionsWidgetModel containerActionsWidgetModel1;
  AudioRecorder? audioRecorder;
  // Model for container_actions_widget component.
  late ContainerActionsWidgetModel containerActionsWidgetModel2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Upload File to Bucket)] action in container_actions_widget widget.
  ApiCallResponse? uploadaudiourlCopy;
  String? morestartsAudio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioFileToBytes] action in Button widget.
  FFUploadedFile? convertedaudio;
  // Stores action output result for [Backend Call - API (Upload File to Bucket)] action in Button widget.
  ApiCallResponse? audirecordingourl;

  @override
  void initState(BuildContext context) {
    containerActionsWidgetModel1 =
        createModel(context, () => ContainerActionsWidgetModel());
    containerActionsWidgetModel2 =
        createModel(context, () => ContainerActionsWidgetModel());
  }

  @override
  void dispose() {
    containerActionsWidgetModel1.dispose();
    containerActionsWidgetModel2.dispose();
  }
}
