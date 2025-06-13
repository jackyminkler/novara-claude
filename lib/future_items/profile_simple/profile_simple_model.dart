import '/flutter_flow/flutter_flow_util.dart';
import '/future_items/widget_event_card/widget_event_card_widget.dart';
import 'profile_simple_widget.dart' show ProfileSimpleWidget;
import 'package:flutter/material.dart';

class ProfileSimpleModel extends FlutterFlowModel<ProfileSimpleWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for WidgetEventCard dynamic component.
  late FlutterFlowDynamicModels<WidgetEventCardModel> widgetEventCardModels;

  @override
  void initState(BuildContext context) {
    widgetEventCardModels =
        FlutterFlowDynamicModels(() => WidgetEventCardModel());
  }

  @override
  void dispose() {
    widgetEventCardModels.dispose();
  }
}
