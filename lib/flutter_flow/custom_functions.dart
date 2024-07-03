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
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

double? convertPercentage(double? percentage) {
  if (percentage == null) {
    return null;
  }

  double result = percentage / 100;
  return result;
}

String? convertDate(String? date) {
  if (date == null) {
    return null;
  }

  try {
    DateTime parsedDate = DateFormat('yyyy-MM-dd').parse(date);
    String formattedDate = DateFormat('dd-MM-yyyy').format(parsedDate);
    return formattedDate;
  } catch (e) {
    // Handle parsing error if necessary
    return null;
  }
}

String? convertToNumber(String? number) {
  if (number == null) {
    return null;
  }

  try {
    int result = int.parse(number);
    return result.toString();
  } catch (e) {
    // Handle parsing error if necessary
    return null;
  }
}

String? convertTimestampToDate(int? timestamp) {
  if (timestamp == null) {
    return null;
  }

  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
  DateFormat formatter = DateFormat('d \'de\' MMMM, HH:mm', 'pt_BR');
  return formatter.format(date);
}
