import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_to_calendar_model.dart';
export 'add_to_calendar_model.dart';

class AddToCalendarWidget extends StatefulWidget {
  const AddToCalendarWidget({
    super.key,
    required this.activityRef,
  });

  final ActivitiesRecord? activityRef;

  @override
  State<AddToCalendarWidget> createState() => _AddToCalendarWidgetState();
}

class _AddToCalendarWidgetState extends State<AddToCalendarWidget> {
  late AddToCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToCalendarModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 14.0, 14.0, 14.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                      child: Text(
                        'Add to Calendar',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              font: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).tertiary,
                  icon: Icon(
                    FFIcons.kcalendarPlus01,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'ADD_TO_CALENDAR_calendarPlus01_ICN_ON_TA');
                    logFirebaseEvent('IconButton_custom_action');
                    await actions.addToDeviceCalendar(
                      widget.activityRef!.title,
                      'Get up-to-date information at: https://app.novara.social/activity?activityRef=${widget.activityRef?.activityID} \\n\\n ${widget.activityRef?.description}',
                      widget.activityRef?.location,
                      widget.activityRef!.date!,
                      60,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
