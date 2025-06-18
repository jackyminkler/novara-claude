import '/create_run/components/date_selector/date_selector_widget.dart';
import '/create_run/components/distance_field/distance_field_widget.dart';
import '/create_run/components/input_field_title/input_field_title_widget.dart';
import '/create_run/components/location_dropdown/location_dropdown_widget.dart';
import '/create_run/components/time_selector/time_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_run_activity_widget.dart' show EditRunActivityWidget;
import 'package:flutter/material.dart';

class EditRunActivityModel extends FlutterFlowModel<EditRunActivityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TitleField.
  late InputFieldTitleModel titleFieldModel;
  // Model for LocationDropdown component.
  late LocationDropdownModel locationDropdownModel;
  // Model for DistanceField component.
  late DistanceFieldModel distanceFieldModel;
  // Model for DateSelector component.
  late DateSelectorModel dateSelectorModel;
  // Model for TimeSelector component.
  late TimeSelectorModel timeSelectorModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    titleFieldModel = createModel(context, () => InputFieldTitleModel());
    locationDropdownModel = createModel(context, () => LocationDropdownModel());
    distanceFieldModel = createModel(context, () => DistanceFieldModel());
    dateSelectorModel = createModel(context, () => DateSelectorModel());
    timeSelectorModel = createModel(context, () => TimeSelectorModel());
  }

  @override
  void dispose() {
    titleFieldModel.dispose();
    locationDropdownModel.dispose();
    distanceFieldModel.dispose();
    dateSelectorModel.dispose();
    timeSelectorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
