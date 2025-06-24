import '/flutter_flow/flutter_flow_util.dart';
import '/profile/components/profile_highlights/profile_highlights_widget.dart';
import '/profile/components/profile_user_activities/profile_user_activities_widget.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  bool fullDescription = false;

  ///  State fields for stateful widgets in this page.

  // Model for ProfileHighlights component.
  late ProfileHighlightsModel profileHighlightsModel;
  // Model for ProfileUserActivities component.
  late ProfileUserActivitiesModel profileUserActivitiesModel;

  @override
  void initState(BuildContext context) {
    profileHighlightsModel =
        createModel(context, () => ProfileHighlightsModel());
    profileUserActivitiesModel =
        createModel(context, () => ProfileUserActivitiesModel());
  }

  @override
  void dispose() {
    profileHighlightsModel.dispose();
    profileUserActivitiesModel.dispose();
  }
}
