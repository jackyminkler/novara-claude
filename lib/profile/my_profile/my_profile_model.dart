import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import '/profile/components/profile_highlights/profile_highlights_widget.dart';
import '/profile/components/social_media/social_media_widget.dart';
import '/index.dart';
import 'my_profile_widget.dart' show MyProfileWidget;
import 'package:flutter/material.dart';

class MyProfileModel extends FlutterFlowModel<MyProfileWidget> {
  ///  Local state fields for this page.

  DocumentReference? userRef;

  ///  State fields for stateful widgets in this page.

  // Model for ProfileHighlights component.
  late ProfileHighlightsModel profileHighlightsModel;
  // Model for SocialMedia component.
  late SocialMediaModel socialMediaModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    profileHighlightsModel =
        createModel(context, () => ProfileHighlightsModel());
    socialMediaModel = createModel(context, () => SocialMediaModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    profileHighlightsModel.dispose();
    socialMediaModel.dispose();
    navBarModel.dispose();
  }
}
