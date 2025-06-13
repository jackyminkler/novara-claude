import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'questions_widget.dart' show QuestionsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class QuestionsModel extends FlutterFlowModel<QuestionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView-Group widget.
  PageController? pageViewGroupController;

  int get pageViewGroupCurrentIndex => pageViewGroupController != null &&
          pageViewGroupController!.hasClients &&
          pageViewGroupController!.page != null
      ? pageViewGroupController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
