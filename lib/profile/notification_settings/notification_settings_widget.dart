import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notification_settings_model.dart';
export 'notification_settings_model.dart';

class NotificationSettingsWidget extends StatefulWidget {
  const NotificationSettingsWidget({super.key});

  static String routeName = 'NotificationSettings';
  static String routePath = 'notificationSettings';

  @override
  State<NotificationSettingsWidget> createState() =>
      _NotificationSettingsWidgetState();
}

class _NotificationSettingsWidgetState
    extends State<NotificationSettingsWidget> {
  late NotificationSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationSettingsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'NotificationSettings'});
    _model.switchValue1 = true;
    _model.switchValue2 = true;
    _model.switchValue3 = true;
    _model.switchValue4 = true;
    _model.switchValue5 = true;
    _model.switchValue6 = true;
    _model.switchValue7 = true;
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 42.0,
              fillColor: FlutterFlowTheme.of(context).accent4,
              icon: Icon(
                FFIcons.karrowLeft,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('NOTIFICATION_SETTINGS_arrowLeft_ICN_ON_T');
                logFirebaseEvent('IconButton_navigate_back');
                context.safePop();
              },
            ),
          ),
          title: Text(
            'Notifications',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'New participant joins your event',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue1!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue1 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'Participant leaves your event',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue2!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue2 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'New comments on events hosting',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue3!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue3 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'New comments on events attending',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue4!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue4 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'Upcoming event cancellation',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue5!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue5 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'Upcoming event reminders',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue6!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue6 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 0.0, 14.0),
                  child: Text(
                    'App Updates',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Switch.adaptive(
                    value: _model.switchValue7!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue7 = newValue);
                    },
                    activeColor: FlutterFlowTheme.of(context).info,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor: FlutterFlowTheme.of(context).accent2,
                    inactiveThumbColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
              ],
            ),
          ].addToStart(SizedBox(height: 15.0)).addToEnd(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
