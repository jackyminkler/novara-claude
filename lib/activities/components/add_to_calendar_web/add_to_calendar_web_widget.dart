import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_to_calendar_web_model.dart';
export 'add_to_calendar_web_model.dart';

class AddToCalendarWebWidget extends StatefulWidget {
  const AddToCalendarWebWidget({
    super.key,
    required this.activityRef,
  });

  final ActivitiesRecord? activityRef;

  @override
  State<AddToCalendarWebWidget> createState() => _AddToCalendarWebWidgetState();
}

class _AddToCalendarWebWidgetState extends State<AddToCalendarWebWidget> {
  late AddToCalendarWebModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToCalendarWebModel());

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
                        'ADD_TO_CALENDAR_WEB_calendarPlus01_ICN_O');
                    logFirebaseEvent('IconButton_launch_u_r_l');
                    await launchURL(
                        'https://calendar.google.com/calendar/render?action=TEMPLATE&text=${widget.activityRef?.title}&dates=${dateTimeFormat(
                      "yyyyMMddTHHmmssZ",
                      widget.activityRef?.date,
                      locale: FFLocalizations.of(context).languageCode,
                    )}&details=${widget.activityRef?.description}&location=${widget.activityRef?.location}');
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
