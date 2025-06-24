import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'activity_details_combined_widget.dart'
    show ActivityDetailsCombinedWidget;
import 'package:flutter/material.dart';

class ActivityDetailsCombinedModel
    extends FlutterFlowModel<ActivityDetailsCombinedWidget> {
  ///  Local state fields for this page.

  bool fullDescription = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Query cache managers for this widget.

  final _selectedActivityManager = StreamRequestManager<ActivitiesRecord>();
  Stream<ActivitiesRecord> selectedActivity({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<ActivitiesRecord> Function() requestFn,
  }) =>
      _selectedActivityManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSelectedActivityCache() => _selectedActivityManager.clear();
  void clearSelectedActivityCacheKey(String? uniqueKey) =>
      _selectedActivityManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearSelectedActivityCache();
  }
}
