import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NOTIFICATION_SETTINGS_NotificationSettin');
      if (await getPermissionStatus(notificationsPermission)) {
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchJoinsValue = true;
        });
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchLeavesValue = true;
        });
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchCommentHostingValue = true;
        });
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchCommentAttendingValue = true;
        });
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchCancelledValue = true;
        });
        logFirebaseEvent('NotificationSettings_set_form_field');
        safeSetState(() {
          _model.switchRemindersValue = true;
        });
      }
    });

    _model.switchJoinsValue = false;
    _model.switchLeavesValue = false;
    _model.switchCommentHostingValue = false;
    _model.switchCommentAttendingValue = false;
    _model.switchCancelledValue = false;
    _model.switchRemindersValue = false;
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchJoinsValue!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchJoinsValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-joins_ON_TO');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent('Switch-joins_update_app_state');
                          FFAppState().PNparticipantJoins = true;
                        } else {
                          logFirebaseEvent('Switch-joins_request_permissions');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent('Switch-joins_update_app_state');
                            FFAppState().PNparticipantJoins = true;
                          } else {
                            logFirebaseEvent('Switch-joins_update_app_state');
                            FFAppState().PNparticipantJoins = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-joins_ON_TO');
                        logFirebaseEvent('Switch-joins_update_app_state');
                        FFAppState().PNparticipantJoins = false;
                      }
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchLeavesValue!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchLeavesValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-leaves_ON_T');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent('Switch-leaves_update_app_state');
                          FFAppState().PNparticipantLeaves = true;
                        } else {
                          logFirebaseEvent('Switch-leaves_request_permissions');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent('Switch-leaves_update_app_state');
                            FFAppState().PNparticipantLeaves = true;
                          } else {
                            logFirebaseEvent('Switch-leaves_update_app_state');
                            FFAppState().PNparticipantLeaves = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-leaves_ON_T');
                        logFirebaseEvent('Switch-leaves_update_app_state');
                        FFAppState().PNparticipantLeaves = false;
                      }
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchCommentHostingValue!,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchCommentHostingValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-commentHost');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent(
                              'Switch-commentHosting_update_app_state');
                          FFAppState().PNnewCommentsHosting = true;
                        } else {
                          logFirebaseEvent(
                              'Switch-commentHosting_request_permission');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent(
                                'Switch-commentHosting_update_app_state');
                            FFAppState().PNnewCommentsHosting = true;
                          } else {
                            logFirebaseEvent(
                                'Switch-commentHosting_update_app_state');
                            FFAppState().PNnewCommentsHosting = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-commentHost');
                        logFirebaseEvent(
                            'Switch-commentHosting_update_app_state');
                        FFAppState().PNnewCommentsHosting = false;
                      }
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchCommentAttendingValue!,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchCommentAttendingValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-commentAtte');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent(
                              'Switch-commentAttending_update_app_state');
                          FFAppState().PNnewCommentAttending = true;
                        } else {
                          logFirebaseEvent(
                              'Switch-commentAttending_request_permissi');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent(
                                'Switch-commentAttending_update_app_state');
                            FFAppState().PNnewCommentAttending = true;
                          } else {
                            logFirebaseEvent(
                                'Switch-commentAttending_update_app_state');
                            FFAppState().PNnewCommentAttending = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-commentAtte');
                        logFirebaseEvent(
                            'Switch-commentAttending_update_app_state');
                        FFAppState().PNnewCommentAttending = false;
                      }
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchCancelledValue!,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchCancelledValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-cancelled_O');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent('Switch-cancelled_update_app_state');
                          FFAppState().PNeventCancelled = true;
                        } else {
                          logFirebaseEvent(
                              'Switch-cancelled_request_permissions');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent(
                                'Switch-cancelled_update_app_state');
                            FFAppState().PNeventCancelled = true;
                          } else {
                            logFirebaseEvent(
                                'Switch-cancelled_update_app_state');
                            FFAppState().PNeventCancelled = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-cancelled_O');
                        logFirebaseEvent('Switch-cancelled_update_app_state');
                        FFAppState().PNeventCancelled = false;
                      }
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
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
                    value: _model.switchRemindersValue!,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchRemindersValue = newValue);
                      if (newValue) {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-reminders_O');
                        if (await getPermissionStatus(
                            notificationsPermission)) {
                          logFirebaseEvent('Switch-reminders_update_app_state');
                          FFAppState().PNeventReminders = true;
                        } else {
                          logFirebaseEvent(
                              'Switch-reminders_request_permissions');
                          await requestPermission(notificationsPermission);
                          if (await getPermissionStatus(
                              notificationsPermission)) {
                            logFirebaseEvent(
                                'Switch-reminders_update_app_state');
                            FFAppState().PNeventReminders = true;
                          } else {
                            logFirebaseEvent(
                                'Switch-reminders_update_app_state');
                            FFAppState().PNeventReminders = false;
                          }
                        }
                      } else {
                        logFirebaseEvent(
                            'NOTIFICATION_SETTINGS_Switch-reminders_O');
                        logFirebaseEvent('Switch-reminders_update_app_state');
                        FFAppState().PNeventReminders = false;
                      }
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
