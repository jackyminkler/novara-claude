import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/future_items/widget_event_card/widget_event_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_simple_model.dart';
export 'profile_simple_model.dart';

class ProfileSimpleWidget extends StatefulWidget {
  const ProfileSimpleWidget({super.key});

  @override
  State<ProfileSimpleWidget> createState() => _ProfileSimpleWidgetState();
}

class _ProfileSimpleWidgetState extends State<ProfileSimpleWidget> {
  late ProfileSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSimpleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (FFAppState().OrganizatorTAB == 0)
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 0.0, 0.0),
                  child: Text(
                    'Upcoming Activities',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final events =
                          FFAppState().EVENTS.toList().take(5).toList();

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: events.length,
                        separatorBuilder: (_, __) => SizedBox(height: 25.0),
                        itemBuilder: (context, eventsIndex) {
                          final eventsItem = events[eventsIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: wrapWithModel(
                              model: _model.widgetEventCardModels.getModel(
                                eventsIndex.toString(),
                                eventsIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: WidgetEventCardWidget(
                                key: Key(
                                  'Keyclw_${eventsIndex.toString()}',
                                ),
                                data: eventsItem,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ].addToEnd(SizedBox(height: 15.0)),
            ),
          ),
      ],
    );
  }
}
