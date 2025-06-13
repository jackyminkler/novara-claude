import '/backend/backend.dart';
import '/components/activity_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/home_page_nav/home_page_nav_widget.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePageNav component.
  late HomePageNavModel homePageNavModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ActivitiesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for ActivityCard dynamic component.
  late FlutterFlowDynamicModels<ActivityCardModel> activityCardModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    homePageNavModel = createModel(context, () => HomePageNavModel());
    activityCardModels = FlutterFlowDynamicModels(() => ActivityCardModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    homePageNavModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    activityCardModels.dispose();
    navBarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ActivitiesRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ActivitiesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, ActivitiesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryActivitiesRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
