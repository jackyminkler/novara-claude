import '/activities/components/activity_details_divider/activity_details_divider_widget.dart';
import '/activities/components/attendees/attendees_widget.dart';
import '/activities/components/comments/comments_widget.dart';
import '/activities/components/organizer/organizer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'run_details2_widget.dart' show RunDetails2Widget;
import 'package:flutter/material.dart';

class RunDetails2Model extends FlutterFlowModel<RunDetails2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for ActivityDetailsDivider component.
  late ActivityDetailsDividerModel activityDetailsDividerModel1;
  // Model for Organizer component.
  late OrganizerModel organizerModel;
  // Model for Attendees component.
  late AttendeesModel attendeesModel;
  // Model for ActivityDetailsDivider component.
  late ActivityDetailsDividerModel activityDetailsDividerModel2;
  // Model for Comments component.
  late CommentsModel commentsModel;

  @override
  void initState(BuildContext context) {
    activityDetailsDividerModel1 =
        createModel(context, () => ActivityDetailsDividerModel());
    organizerModel = createModel(context, () => OrganizerModel());
    attendeesModel = createModel(context, () => AttendeesModel());
    activityDetailsDividerModel2 =
        createModel(context, () => ActivityDetailsDividerModel());
    commentsModel = createModel(context, () => CommentsModel());
  }

  @override
  void dispose() {
    activityDetailsDividerModel1.dispose();
    organizerModel.dispose();
    attendeesModel.dispose();
    activityDetailsDividerModel2.dispose();
    commentsModel.dispose();
  }
}
