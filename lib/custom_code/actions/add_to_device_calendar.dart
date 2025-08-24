// Automatic FlutterFlow imports
import '/backend/backend.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import '/backend/schema/structs/index.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<bool> addToDeviceCalendar(
  String title,
  String? description,
  String? location,
  DateTime startDate,
  int? reminderMinutes,
) async {
  try {
    if (kIsWeb) {
      // Not supported on web builds
      return false;
    }

    final parts = <String>[];
    if (description != null && description.trim().isNotEmpty) {
      parts.add(description.trim());
    }
    final finalDescription = parts.isEmpty ? null : parts.join('\n\n');

    final event = Event(
      title: title,
      description: finalDescription,
      location: (location == null || location.trim().isEmpty)
          ? null
          : location.trim(),
      startDate: startDate,
      // fallback: 1 hour after startDate
      endDate: startDate.add(const Duration(hours: 1)),
      iosParams: IOSParams(
        reminder: (reminderMinutes != null && reminderMinutes > 0)
            ? Duration(minutes: reminderMinutes)
            : null,
      ),
    );

    await Add2Calendar.addEvent2Cal(event);
    return true;
  } catch (_) {
    return false;
  }
}
