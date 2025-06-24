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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
