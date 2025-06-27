import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/activity_card/activity_card_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'profile_user_activities_model.dart';
export 'profile_user_activities_model.dart';

class ProfileUserActivitiesWidget extends StatefulWidget {
  const ProfileUserActivitiesWidget({
    super.key,
    this.userRef,
  });

  final DocumentReference? userRef;

  @override
  State<ProfileUserActivitiesWidget> createState() =>
      _ProfileUserActivitiesWidgetState();
}

class _ProfileUserActivitiesWidgetState
    extends State<ProfileUserActivitiesWidget> with TickerProviderStateMixin {
  late ProfileUserActivitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileUserActivitiesModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Align(
              alignment: Alignment(0.0, 0),
              child: TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryText,
                unselectedLabelColor:
                    FlutterFlowTheme.of(context).secondaryText,
                labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.rubik(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                unselectedLabelStyle: FlutterFlowTheme.of(context)
                    .titleMedium
                    .override(
                      font: GoogleFonts.rubik(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                indicatorColor: FlutterFlowTheme.of(context).primary,
                tabs: [
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Past',
                  ),
                  Tab(
                    text: 'Organized',
                  ),
                ],
                controller: _model.tabBarController,
                onTap: (i) async {
                  [() async {}, () async {}, () async {}][i]();
                },
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _model.tabBarController,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: PagedListView<DocumentSnapshot<Object?>?,
                                  ActivitiesRecord>.separated(
                                pagingController: _model.setListViewController1(
                                  ActivitiesRecord.collection
                                      .where(
                                        'date',
                                        isGreaterThan: getCurrentTimestamp,
                                      )
                                      .where(
                                        'participants',
                                        arrayContains: widget.userRef,
                                      )
                                      .orderBy('date'),
                                ),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                reverse: false,
                                scrollDirection: Axis.vertical,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 16.0),
                                builderDelegate:
                                    PagedChildBuilderDelegate<ActivitiesRecord>(
                                  // Customize what your widget looks like when it's loading the first page.
                                  firstPageProgressIndicatorBuilder: (_) =>
                                      Center(
                                    child: SizedBox(
                                      width: 25.0,
                                      height: 25.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Customize what your widget looks like when it's loading another page.
                                  newPageProgressIndicatorBuilder: (_) =>
                                      Center(
                                    child: SizedBox(
                                      width: 25.0,
                                      height: 25.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  ),

                                  itemBuilder: (context, _, listViewIndex) {
                                    final listViewActivitiesRecord = _model
                                        .listViewPagingController1!
                                        .itemList![listViewIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PROFILE_USER_ACTIVITIES_Container_j3rbe1');
                                        logFirebaseEvent(
                                            'ActivityCard_navigate_to');

                                        context.pushNamed(
                                          ActivityDetailsWidget.routeName,
                                          queryParameters: {
                                            'activityRef': serializeParam(
                                              listViewActivitiesRecord
                                                  .reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: wrapWithModel(
                                        model:
                                            _model.activityCardModels1.getModel(
                                          listViewActivitiesRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ActivityCardWidget(
                                          key: Key(
                                            'Keyj3r_${listViewActivitiesRecord.reference.id}',
                                          ),
                                          activityCard:
                                              listViewActivitiesRecord,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: PagedListView<DocumentSnapshot<Object?>?,
                                ActivitiesRecord>.separated(
                              pagingController: _model.setListViewController2(
                                ActivitiesRecord.collection
                                    .where(
                                      'date',
                                      isLessThan: getCurrentTimestamp,
                                    )
                                    .where(
                                      'participants',
                                      arrayContains: widget.userRef,
                                    )
                                    .orderBy('date'),
                              ),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              reverse: false,
                              scrollDirection: Axis.vertical,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 16.0),
                              builderDelegate:
                                  PagedChildBuilderDelegate<ActivitiesRecord>(
                                // Customize what your widget looks like when it's loading the first page.
                                firstPageProgressIndicatorBuilder: (_) =>
                                    Center(
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                ),
                                // Customize what your widget looks like when it's loading another page.
                                newPageProgressIndicatorBuilder: (_) => Center(
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                ),

                                itemBuilder: (context, _, listViewIndex) {
                                  final listViewActivitiesRecord = _model
                                      .listViewPagingController2!
                                      .itemList![listViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'PROFILE_USER_ACTIVITIES_Container_s64dtd');
                                      logFirebaseEvent(
                                          'ActivityCard_navigate_to');

                                      context.pushNamed(
                                        ActivityDetailsWidget.routeName,
                                        queryParameters: {
                                          'activityRef': serializeParam(
                                            listViewActivitiesRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.activityCardModels2.getModel(
                                        listViewActivitiesRecord.reference.id,
                                        listViewIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: ActivityCardWidget(
                                        key: Key(
                                          'Keys64_${listViewActivitiesRecord.reference.id}',
                                        ),
                                        activityCard: listViewActivitiesRecord,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: PagedListView<DocumentSnapshot<Object?>?,
                                ActivitiesRecord>.separated(
                              pagingController: _model.setListViewController3(
                                ActivitiesRecord.collection
                                    .where(
                                      'creatorID',
                                      isEqualTo: widget.userRef?.id,
                                    )
                                    .orderBy('date'),
                              ),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              reverse: false,
                              scrollDirection: Axis.vertical,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 16.0),
                              builderDelegate:
                                  PagedChildBuilderDelegate<ActivitiesRecord>(
                                // Customize what your widget looks like when it's loading the first page.
                                firstPageProgressIndicatorBuilder: (_) =>
                                    Center(
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                ),
                                // Customize what your widget looks like when it's loading another page.
                                newPageProgressIndicatorBuilder: (_) => Center(
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                ),

                                itemBuilder: (context, _, listViewIndex) {
                                  final listViewActivitiesRecord = _model
                                      .listViewPagingController3!
                                      .itemList![listViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'PROFILE_USER_ACTIVITIES_Container_8eg08e');
                                      logFirebaseEvent(
                                          'ActivityCard_navigate_to');

                                      context.pushNamed(
                                        ActivityDetailsWidget.routeName,
                                        queryParameters: {
                                          'activityRef': serializeParam(
                                            listViewActivitiesRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.activityCardModels3.getModel(
                                        listViewActivitiesRecord.reference.id,
                                        listViewIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: ActivityCardWidget(
                                        key: Key(
                                          'Key8eg_${listViewActivitiesRecord.reference.id}',
                                        ),
                                        activityCard: listViewActivitiesRecord,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
