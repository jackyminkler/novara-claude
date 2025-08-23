import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_activity_widget.dart' show CreateActivityWidget;
import 'package:flutter/material.dart';

class CreateActivityModel extends FlutterFlowModel<CreateActivityWidget> {
  ///  Local state fields for this page.

  DateTime? activityDate;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Title widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown-Location widget.
  String? dropDownLocationValue;
  FormFieldController<String>? dropDownLocationValueController;
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
  // State field(s) for TextField-Distance widget.
  FocusNode? textFieldDistanceFocusNode;
  TextEditingController? textFieldDistanceTextController;
  String? Function(BuildContext, String?)?
      textFieldDistanceTextControllerValidator;
  // State field(s) for TextField-Pace widget.
  FocusNode? textFieldPaceFocusNode;
  TextEditingController? textFieldPaceTextController;
  String? Function(BuildContext, String?)? textFieldPaceTextControllerValidator;
  // State field(s) for TextField-Details widget.
  FocusNode? textFieldDetailsFocusNode;
  TextEditingController? textFieldDetailsTextController;
  String? Function(BuildContext, String?)?
      textFieldDetailsTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ActivitiesRecord? newActivity;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    textFieldDistanceFocusNode?.dispose();
    textFieldDistanceTextController?.dispose();

    textFieldPaceFocusNode?.dispose();
    textFieldPaceTextController?.dispose();

    textFieldDetailsFocusNode?.dispose();
    textFieldDetailsTextController?.dispose();
  }
}
