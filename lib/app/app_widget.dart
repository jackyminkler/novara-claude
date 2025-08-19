import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_model.dart';
export 'app_model.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  static String routeName = 'App';
  static String routePath = 'app';

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'App'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('APP_PAGE_App_ON_INIT_STATE');
      if (isiOS) {
        logFirebaseEvent('App_launch_u_r_l');
        await launchURL('https://testflight.apple.com/join/TSufQKkz');
      } else {
        if (isAndroid) {
          logFirebaseEvent('App_launch_u_r_l');
          await launchURL('');
        } else {
          logFirebaseEvent('App_launch_u_r_l');
          await launchURL('app.novara.social');
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).coreDarkestPurple,
          ),
          child: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/gj2q4_N.png',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'We\'re glad you\'re here!',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.rubik(
                          fontWeight: FontWeight.normal,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Text(
                    'Novara is a new way to connect - starting with running.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).iconSecondary,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('APP_PAGE_Apple_ON_TAP');
                      logFirebaseEvent('Apple_launch_u_r_l');
                      await launchURL(
                          'https://testflight.apple.com/join/TSufQKkz');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.apple,
                                        color:
                                            FlutterFlowTheme.of(context).white2,
                                        size: 27.0,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Download via TestFlight',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white2,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  FFIcons.kchevronRight,
                                  color: FlutterFlowTheme.of(context).white2,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('APP_PAGE_Android_ON_TAP');
                      logFirebaseEvent('Android_launch_u_r_l');
                      await launchURL('app.novara.social');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.play,
                                        color:
                                            FlutterFlowTheme.of(context).white2,
                                        size: 27.0,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Get it on the Play Store',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white2,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  FFIcons.kchevronRight,
                                  color: FlutterFlowTheme.of(context).white2,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 40.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('APP_PAGE_Web_ON_TAP');
                      logFirebaseEvent('Web_launch_u_r_l');
                      await launchURL('app.novara.social');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: Icon(
                                        Icons.web_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .iconSecondary,
                                        size: 27.0,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Stay on the web',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconSecondary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  FFIcons.kchevronRight,
                                  color: FlutterFlowTheme.of(context)
                                      .iconSecondary,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
