import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/activity_card_home/activity_card_home_widget.dart';
import '/home/components/home_page_nav/home_page_nav_widget.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePageNav component.
  late HomePageNavModel homePageNavModel;
  // Models for ActivityCardHome dynamic component.
  late FlutterFlowDynamicModels<ActivityCardHomeModel> activityCardHomeModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    homePageNavModel = createModel(context, () => HomePageNavModel());
    activityCardHomeModels =
        FlutterFlowDynamicModels(() => ActivityCardHomeModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    homePageNavModel.dispose();
    activityCardHomeModels.dispose();
    navBarModel.dispose();
  }
}
