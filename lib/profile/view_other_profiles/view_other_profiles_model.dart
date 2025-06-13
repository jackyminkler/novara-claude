import '/flutter_flow/flutter_flow_util.dart';
import '/future_items/profile_simple/profile_simple_widget.dart';
import '/profile/components/profile_highlights/profile_highlights_widget.dart';
import 'view_other_profiles_widget.dart' show ViewOtherProfilesWidget;
import 'package:flutter/material.dart';

class ViewOtherProfilesModel extends FlutterFlowModel<ViewOtherProfilesWidget> {
  ///  Local state fields for this page.

  bool fullDescription = false;

  ///  State fields for stateful widgets in this page.

  // Model for ProfileHighlights component.
  late ProfileHighlightsModel profileHighlightsModel;
  // Model for ProfileSimple component.
  late ProfileSimpleModel profileSimpleModel;

  @override
  void initState(BuildContext context) {
    profileHighlightsModel =
        createModel(context, () => ProfileHighlightsModel());
    profileSimpleModel = createModel(context, () => ProfileSimpleModel());
  }

  @override
  void dispose() {
    profileHighlightsModel.dispose();
    profileSimpleModel.dispose();
  }
}
