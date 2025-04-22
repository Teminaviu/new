import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? generateConstraint(List<String> companyIDs) {
  // Return null if the companyIDs list is empty
  if (companyIDs.isEmpty) return null;

  // Create the constraint using the "$in" operator to match multiple company IDs
  Map<String, dynamic> constraint = {
    "key": "_id",
    "constraint_type": "in",
    "value": companyIDs
  };

  // Convert the constraint to a JSON string
  String constraintString = jsonEncode([constraint]);

  // Return the JSON string
  return constraintString;
}
