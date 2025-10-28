import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

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
  String? Function(BuildContext, String?)?
      textFieldAvgPaceTextControllerValidator;
  // State field(s) for TextField-prefDistance widget.
  FocusNode? textFieldPrefDistanceFocusNode;
  TextEditingController? textFieldPrefDistanceTextController;
  String? Function(BuildContext, String?)?
      textFieldPrefDistanceTextControllerValidator;
  // State field(s) for TextField-instagram widget.
  FocusNode? textFieldInstagramFocusNode;
  TextEditingController? textFieldInstagramTextController;
  String? Function(BuildContext, String?)?
      textFieldInstagramTextControllerValidator;
  // State field(s) for TextField-strava widget.
  FocusNode? textFieldStravaFocusNode;
  TextEditingController? textFieldStravaTextController;
  String? Function(BuildContext, String?)?
      textFieldStravaTextControllerValidator;

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

    textFieldInstagramFocusNode?.dispose();
    textFieldInstagramTextController?.dispose();

    textFieldStravaFocusNode?.dispose();
    textFieldStravaTextController?.dispose();
  }
}
