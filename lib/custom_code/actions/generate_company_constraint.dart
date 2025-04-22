// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

String? generateCompanyConstraint(List<String> companyIDs) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Return null if the companyIDs list is empty
  if (companyIDs.isEmpty) return null;

  // Create the constraint using the "in" operator to match multiple company IDs
  Map<String, dynamic> constraint = {
    "key": "_id",
    "constraint_type": "in",
    "value": companyIDs
  };

  // Convert the constraint to a JSON string
  String constraintString = jsonEncode([constraint]);

  // Return the JSON string
  return constraintString;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
