import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/activity_card/activity_card_widget.dart';
import '/home/components/filter_by_location/filter_by_location_widget.dart';
import '/home/components/filter_by_run_terrain/filter_by_run_terrain_widget.dart';
import '/home/components/filter_by_run_type/filter_by_run_type_widget.dart';
import '/home/components/home_page_nav/home_page_nav_widget.dart';
import '/home/components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
    this.selectedNavTab,
  });

  final int? selectedNavTab;

  static String routeName = 'Home';
  static String routePath = 'home';

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
            .orderBy('date'),
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
                    FlutterFlowTheme.of(context).secondary,
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
          child: WillPopScope(
            onWillPop: () async => false,
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
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'HOME_PAGE_RunTypeButton_ON_TAP');
                                      logFirebaseEvent(
                                          'RunTypeButton_bottom_sheet');
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
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
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
                                                          .SelectedRunTypeHomeFilter ==
                                                      ''
                                              ? (Theme.of(context).brightness ==
                                                      Brightness.light
                                                  ? FlutterFlowTheme.of(context)
                                                      .white2
                                                  : FlutterFlowTheme.of(context)
                                                      .accent1)
                                              : FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          FlutterFlowTheme.of(context).accent1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.light
                                                    ? Color(0x386572F2)
                                                    : Color(0x00000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.directions_run_rounded,
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedRunTypeHomeFilter !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .info
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                size: 18.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState()
                                                                        .SelectedRunTypeHomeFilter !=
                                                                    ''
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .info
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                      ),
                                                      letterSpacing: 0.0,
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
                                              ),
                                            ),
                                            if (FFAppState()
                                                        .SelectedRunTypeHomeFilter !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
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
                                                    color:
                                                        valueOrDefault<Color>(
                                                      FFAppState()
                                                                      .SelectedRunTypeHomeFilter !=
                                                                  ''
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .info
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: InkWell(
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
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
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
                                                          .SelectedRunTerrainHomeFilter ==
                                                      ''
                                              ? (Theme.of(context).brightness ==
                                                      Brightness.light
                                                  ? FlutterFlowTheme.of(context)
                                                      .white2
                                                  : FlutterFlowTheme.of(context)
                                                      .accent1)
                                              : FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          FlutterFlowTheme.of(context).accent1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.light
                                                    ? Color(0x386572F2)
                                                    : Color(0x00000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.terrain_rounded,
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedRunTerrainHomeFilter !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .info
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                size: 18.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState()
                                                                        .SelectedRunTerrainHomeFilter !=
                                                                    ''
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .info
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                      ),
                                                      letterSpacing: 0.0,
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
                                              ),
                                            ),
                                            if (FFAppState()
                                                        .SelectedRunTerrainHomeFilter !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
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
                                                    color:
                                                        valueOrDefault<Color>(
                                                      FFAppState()
                                                                      .SelectedRunTerrainHomeFilter !=
                                                                  ''
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .info
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'HOME_PAGE_LcationButton_ON_TAP');
                                      logFirebaseEvent(
                                          'LcationButton_bottom_sheet');
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
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
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
                                          FFAppState()
                                                          .SelectedLocation ==
                                                      ''
                                              ? (Theme.of(context).brightness ==
                                                      Brightness.light
                                                  ? FlutterFlowTheme.of(context)
                                                      .white2
                                                  : FlutterFlowTheme.of(context)
                                                      .accent1)
                                              : FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          FlutterFlowTheme.of(context).accent1,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.light
                                                    ? Color(0x386572F2)
                                                    : Color(0x00000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.location_pin,
                                                color: valueOrDefault<Color>(
                                                  FFAppState()
                                                                  .SelectedLocation !=
                                                              ''
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .info
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                size: 18.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 7.0, 5.0, 7.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState()
                                                                  .SelectedLocation !=
                                                              ''
                                                      ? FFAppState()
                                                          .SelectedLocation
                                                      : 'Location',
                                                  'Location',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState()
                                                                        .SelectedLocation !=
                                                                    ''
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .info
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                      ),
                                                      letterSpacing: 0.0,
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
                                              ),
                                            ),
                                            if (FFAppState().SelectedLocation !=
                                                    '')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'HOME_PAGE_Icon_bisitn3k_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_update_app_state');
                                                    FFAppState()
                                                        .SelectedLocation = '';
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    FFIcons.kxClose,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      FFAppState()
                                                                      .SelectedLocation !=
                                                                  ''
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .info
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                ),
                              ]
                                  .divide(SizedBox(width: 8.0))
                                  .addToStart(SizedBox(width: 15.0))
                                  .addToEnd(SizedBox(width: 15.0)),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 2.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final activitiesList = homeActivitiesRecordList
                                                    .where((e) =>
                                                        ((e
                                                                    .runType ==
                                                                FFAppState()
                                                                    .SelectedRunTypeHomeFilter) ||
                                                            (FFAppState()
                                                                        .SelectedRunTypeHomeFilter ==
                                                                    '')) &&
                                                        ((e.runTerrain ==
                                                                FFAppState()
                                                                    .SelectedRunTerrainHomeFilter) ||
                                                            (FFAppState()
                                                                        .SelectedRunTerrainHomeFilter ==
                                                                    '')) &&
                                                        ((e.location ==
                                                                FFAppState()
                                                                    .SelectedLocation) ||
                                                            (FFAppState()
                                                                        .SelectedLocation ==
                                                                    '')))
                                                    .toList();

                                                return ListView.separated(
                                                  padding: EdgeInsets.fromLTRB(
                                                    0,
                                                    15.0,
                                                    0,
                                                    16.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      activitiesList.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 16.0),
                                                  itemBuilder: (context,
                                                      activitiesListIndex) {
                                                    final activitiesListItem =
                                                        activitiesList[
                                                            activitiesListIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'HOME_PAGE_Container_3ozdws78_ON_TAP');
                                                        logFirebaseEvent(
                                                            'ActivityCard_navigate_to');

                                                        context.pushNamed(
                                                          ActivityDetailsWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'activityRef':
                                                                serializeParam(
                                                              activitiesListItem
                                                                  .reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .activityCardModels
                                                            .getModel(
                                                          activitiesListItem
                                                              .reference.id,
                                                          activitiesListIndex,
                                                        ),
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            ActivityCardWidget(
                                                          key: Key(
                                                            'Key3oz_${activitiesListItem.reference.id}',
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidget(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
