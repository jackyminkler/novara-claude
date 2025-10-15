import '/activities/components/add_to_calendar/add_to_calendar_widget.dart';
import '/activities/components/add_to_calendar_web/add_to_calendar_web_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'activity_details_widget.dart' show ActivityDetailsWidget;
import 'package:flutter/material.dart';

class ActivityDetailsModel extends FlutterFlowModel<ActivityDetailsWidget> {
  ///  Local state fields for this page.

  bool isParticipant = false;

  ///  State fields for stateful widgets in this page.

  ActivitiesRecord? activityDetailsPreviousSnapshot;
  // Model for AddToCalendar component.
  late AddToCalendarModel addToCalendarModel;
  // Model for AddToCalendarWeb component.
  late AddToCalendarWebModel addToCalendarWebModel;
  // State field(s) for Comment-TextField widget.
  FocusNode? commentTextFieldFocusNode;
  TextEditingController? commentTextFieldTextController;
  String? Function(BuildContext, String?)?
      commentTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? loopUserDoc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? loopUserDocCancelled;

  @override
  void initState(BuildContext context) {
    addToCalendarModel = createModel(context, () => AddToCalendarModel());
    addToCalendarWebModel = createModel(context, () => AddToCalendarWebModel());
  }

  @override
  void dispose() {
    addToCalendarModel.dispose();
    addToCalendarWebModel.dispose();
    commentTextFieldFocusNode?.dispose();
    commentTextFieldTextController?.dispose();
  }
}
