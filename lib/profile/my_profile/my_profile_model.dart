import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import '/profile/components/profile_highlights/profile_highlights_widget.dart';
import '/profile/components/profile_user_activities/profile_user_activities_widget.dart';
import '/index.dart';
import 'my_profile_widget.dart' show MyProfileWidget;
import 'package:flutter/material.dart';

class MyProfileModel extends FlutterFlowModel<MyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileHighlights component.
  late ProfileHighlightsModel profileHighlightsModel;
  // Model for ProfileUserActivities component.
  late ProfileUserActivitiesModel profileUserActivitiesModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    profileHighlightsModel =
        createModel(context, () => ProfileHighlightsModel());
    profileUserActivitiesModel =
        createModel(context, () => ProfileUserActivitiesModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    profileHighlightsModel.dispose();
    profileUserActivitiesModel.dispose();
    navBarModel.dispose();
  }
}
