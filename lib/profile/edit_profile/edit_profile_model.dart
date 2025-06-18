import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField-name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextField-location widget.
  FocusNode? textFieldLocationFocusNode;
  TextEditingController? textFieldLocationTextController;
  String? Function(BuildContext, String?)?
      textFieldLocationTextControllerValidator;
  // State field(s) for DropDown-runTerrain widget.
  String? dropDownRunTerrainValue;
  FormFieldController<String>? dropDownRunTerrainValueController;
  // State field(s) for TextField-avgPace widget.
  FocusNode? textFieldAvgPaceFocusNode;
  TextEditingController? textFieldAvgPaceTextController;
  late MaskTextInputFormatter textFieldAvgPaceMask;
  String? Function(BuildContext, String?)?
      textFieldAvgPaceTextControllerValidator;
  // State field(s) for TextField-prefDistance widget.
  FocusNode? textFieldPrefDistanceFocusNode;
  TextEditingController? textFieldPrefDistanceTextController;
  String? Function(BuildContext, String?)?
      textFieldPrefDistanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldLocationFocusNode?.dispose();
    textFieldLocationTextController?.dispose();

    textFieldAvgPaceFocusNode?.dispose();
    textFieldAvgPaceTextController?.dispose();

    textFieldPrefDistanceFocusNode?.dispose();
    textFieldPrefDistanceTextController?.dispose();
  }
}
