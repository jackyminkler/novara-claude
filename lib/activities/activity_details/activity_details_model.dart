import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/future_items/add_to_calendar/add_to_calendar_widget.dart';
import '/index.dart';
import 'activity_details_widget.dart' show ActivityDetailsWidget;
import 'package:flutter/material.dart';

class ActivityDetailsModel extends FlutterFlowModel<ActivityDetailsWidget> {
  ///  Local state fields for this page.

  bool isParticipant = false;

  ///  State fields for stateful widgets in this page.

  ActivitiesRecord? activityDetailsPreviousSnapshot;
  // State field(s) for Comment-TextField widget.
  FocusNode? commentTextFieldFocusNode;
  TextEditingController? commentTextFieldTextController;
  String? Function(BuildContext, String?)?
      commentTextFieldTextControllerValidator;
  // Model for AddToCalendar component.
  late AddToCalendarModel addToCalendarModel;

  @override
  void initState(BuildContext context) {
    addToCalendarModel = createModel(context, () => AddToCalendarModel());
  }

  @override
  void dispose() {
    commentTextFieldFocusNode?.dispose();
    commentTextFieldTextController?.dispose();

    addToCalendarModel.dispose();
  }
}
