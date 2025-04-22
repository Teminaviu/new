// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:path/path.dart' as path;
import '/flutter_flow/uploaded_file.dart'; // For FFUploadedFile type

Future<FFUploadedFile?> convertAudioFileToBytes(String audioFilePath) async {
  try {
    // Access the audio file from the given path
    final audioFile = File(audioFilePath);

    // Check if the file exists at the path
    if (!await audioFile.exists()) {
      print('Audio file does not exist at path: $audioFilePath');
      return null;
    }

    // Read the file bytes
    final audioBytes = await audioFile.readAsBytes();

    // Get the file name from the path
    final fileName = path.basename(audioFilePath);

    // Create and return the FFUploadedFile object
    return FFUploadedFile(
      name: fileName,
      bytes: audioBytes,
      height: null, // Not applicable for audio
      width: null, // Not applicable for audio
      blurHash: null, // Not applicable for audio
    );
  } catch (e) {
    print('Error converting audio file to UploadedFile: $e');
    return null;
  }
}
