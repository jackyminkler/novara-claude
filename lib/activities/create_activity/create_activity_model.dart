import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_activity_widget.dart' show CreateActivityWidget;
import 'package:flutter/material.dart';

class CreateActivityModel extends FlutterFlowModel<CreateActivityWidget> {
  ///  Local state fields for this page.

  DateTime? activityDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField-Title widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  // State field(s) for DropDown-Location widget.
  String? dropDownLocationValue;
  FormFieldController<String>? dropDownLocationValueController;
  // State field(s) for TextField-Distance widget.
  FocusNode? textFieldDistanceFocusNode1;
  TextEditingController? textFieldDistanceTextController1;
  String? Function(BuildContext, String?)?
      textFieldDistanceTextController1Validator;
  // State field(s) for TextField-Distance widget.
  FocusNode? textFieldDistanceFocusNode2;
  TextEditingController? textFieldDistanceTextController2;
  String? Function(BuildContext, String?)?
      textFieldDistanceTextController2Validator;
  DateTime? datePicked;
  // State field(s) for ChoiceChips-RunTerrain widget.
  FormFieldController<List<String>>? choiceChipsRunTerrainValueController;
  String? get choiceChipsRunTerrainValue =>
      choiceChipsRunTerrainValueController?.value?.firstOrNull;
  set choiceChipsRunTerrainValue(String? val) =>
      choiceChipsRunTerrainValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips-RunType widget.
  FormFieldController<List<String>>? choiceChipsRunTypeValueController;
  String? get choiceChipsRunTypeValue =>
      choiceChipsRunTypeValueController?.value?.firstOrNull;
  set choiceChipsRunTypeValue(String? val) =>
      choiceChipsRunTypeValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField-Details widget.
  FocusNode? textFieldDetailsFocusNode;
  TextEditingController? textFieldDetailsTextController;
  String? Function(BuildContext, String?)?
      textFieldDetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    textFieldDistanceFocusNode1?.dispose();
    textFieldDistanceTextController1?.dispose();

    textFieldDistanceFocusNode2?.dispose();
    textFieldDistanceTextController2?.dispose();

    textFieldDetailsFocusNode?.dispose();
    textFieldDetailsTextController?.dispose();
  }
}
