import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/activity_card_home/activity_card_home_widget.dart';
import '/home/components/filter_by_location/filter_by_location_widget.dart';
import '/home/components/filter_by_run_terrain/filter_by_run_terrain_widget.dart';
import '/home/components/filter_by_run_type/filter_by_run_type_widget.dart';
import '/home/components/home_page_nav/home_page_nav_widget.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Home'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ActivitiesRecord>>(
      stream: queryActivitiesRecord(
        queryBuilder: (activitiesRecord) => activitiesRecord
            .where(
              'date',
              isGreaterThanOrEqualTo: getCurrentTimestamp,
            )
            .orderBy('date', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 25.0,
                height: 25.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ActivitiesRecord> homeActivitiesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: AppBar(
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                actions: [],
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                centerTitle: true,
                elevation: 0.0,
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.homePageNavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HomePageNavWidget(),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HOME_PAGE_RunTypeButton_ON_TAP');
                                logFirebaseEvent('RunTypeButton_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor:
                                      FlutterFlowTheme.of(context).barier,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: FilterByRunTypeWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault<Color>(
                                    FFAppState()
                                                    .SelectedRunTypeHomeFilter !=
                                                ''
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context).accent1,
                                    FlutterFlowTheme.of(context).accent1,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.directions_run_rounded,
                                          color: valueOrDefault<Color>(
                                            FFAppState()
                                                            .SelectedRunTypeHomeFilter !=
                                                        ''
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                          size: 18.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 7.0, 5.0, 7.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                            .SelectedRunTypeHomeFilter !=
                                                        ''
                                                ? FFAppState()
                                                    .SelectedRunTypeHomeFilter
                                                : 'Run Type',
                                            'Run Type',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedRunTypeHomeFilter !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      if (FFAppState()
                                                  .SelectedRunTypeHomeFilter !=
                                              '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_Icon_udq6jlhp_ON_TAP');
                                              logFirebaseEvent(
                                                  'Icon_update_app_state');
                                              FFAppState()
                                                  .SelectedRunTypeHomeFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              FFIcons.kxClose,
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                                .SelectedRunTypeHomeFilter !=
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HOME_PAGE_RunTerrainButton_ON_TAP');
                                logFirebaseEvent(
                                    'RunTerrainButton_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor:
                                      FlutterFlowTheme.of(context).barier,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: FilterByRunTerrainWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault<Color>(
                                    FFAppState()
                                                    .SelectedRunTerrainHomeFilter !=
                                                ''
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context).accent1,
                                    FlutterFlowTheme.of(context).accent1,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.terrain_rounded,
                                          color: valueOrDefault<Color>(
                                            FFAppState()
                                                            .SelectedRunTerrainHomeFilter !=
                                                        ''
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                          size: 18.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 7.0, 5.0, 7.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                            .SelectedRunTerrainHomeFilter !=
                                                        ''
                                                ? FFAppState()
                                                    .SelectedRunTerrainHomeFilter
                                                : 'Run Terrain',
                                            'Run Terrain',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedRunTerrainHomeFilter !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      if (FFAppState()
                                                  .SelectedRunTerrainHomeFilter !=
                                              '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_Icon_ku6vyklw_ON_TAP');
                                              logFirebaseEvent(
                                                  'Icon_update_app_state');
                                              FFAppState()
                                                  .SelectedRunTerrainHomeFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              FFIcons.kxClose,
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                                .SelectedRunTerrainHomeFilter !=
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'HOME_PAGE_LcationButton_ON_TAP');
                                logFirebaseEvent('LcationButton_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor:
                                      FlutterFlowTheme.of(context).barier,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: FilterByLocationWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault<Color>(
                                    FFAppState().SelectedLocation != ''
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context).accent1,
                                    FlutterFlowTheme.of(context).accent1,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.location_pin,
                                          color: valueOrDefault<Color>(
                                            FFAppState()
                                                            .SelectedLocation !=
                                                        ''
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                          size: 18.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 7.0, 5.0, 7.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                            .SelectedLocation !=
                                                        ''
                                                ? FFAppState().SelectedLocation
                                                : 'Location',
                                            'Location',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedLocation !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      if (FFAppState().SelectedLocation != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_Icon_bisitn3k_ON_TAP');
                                              logFirebaseEvent(
                                                  'Icon_update_app_state');
                                              FFAppState().SelectedLocation =
                                                  '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              FFIcons.kxClose,
                                              color: valueOrDefault<Color>(
                                                FFAppState()
                                                                .SelectedLocation !=
                                                            ''
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(width: 8.0))
                              .addToStart(SizedBox(width: 15.0))
                              .addToEnd(SizedBox(width: 15.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Upcoming Events',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.rubik(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final activitiesList =
                                          homeActivitiesRecordList.toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: activitiesList.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 16.0),
                                        itemBuilder:
                                            (context, activitiesListIndex) {
                                          final activitiesListItem =
                                              activitiesList[
                                                  activitiesListIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_Container_o1tjv8xr_ON_TAP');
                                              logFirebaseEvent(
                                                  'ActivityCardHome_navigate_to');

                                              context.goNamed(
                                                ActivityDetailsWidget.routeName,
                                                queryParameters: {
                                                  'activityRef': serializeParam(
                                                    activitiesListItem
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .activityCardHomeModels
                                                  .getModel(
                                                activitiesListItem.reference.id,
                                                activitiesListIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ActivityCardHomeWidget(
                                                key: Key(
                                                  'Keyo1t_${activitiesListItem.reference.id}',
                                                ),
                                                activityCard:
                                                    activitiesListItem,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ].addToEnd(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidget(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
