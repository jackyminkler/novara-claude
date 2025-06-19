import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView-Group widget.
  PageController? pageViewGroupController;

  int get pageViewGroupCurrentIndex => pageViewGroupController != null &&
          pageViewGroupController!.hasClients &&
          pageViewGroupController!.page != null
      ? pageViewGroupController!.page!.round()
      : 0;
  // State field(s) for Input_Location widget.
  FocusNode? inputLocationFocusNode;
  TextEditingController? inputLocationTextController;
  String? Function(BuildContext, String?)? inputLocationTextControllerValidator;
  // State field(s) for Input_AvgPace widget.
  FocusNode? inputAvgPaceFocusNode;
  TextEditingController? inputAvgPaceTextController;
  late MaskTextInputFormatter inputAvgPaceMask;
  String? Function(BuildContext, String?)? inputAvgPaceTextControllerValidator;
  // State field(s) for Input_PrefDistance widget.
  FocusNode? inputPrefDistanceFocusNode;
  TextEditingController? inputPrefDistanceTextController;
  String? Function(BuildContext, String?)?
      inputPrefDistanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputLocationFocusNode?.dispose();
    inputLocationTextController?.dispose();

    inputAvgPaceFocusNode?.dispose();
    inputAvgPaceTextController?.dispose();

    inputPrefDistanceFocusNode?.dispose();
    inputPrefDistanceTextController?.dispose();
  }
}
