import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'run_terrain_dropdown_list_model.dart';
export 'run_terrain_dropdown_list_model.dart';

class RunTerrainDropdownListWidget extends StatefulWidget {
  const RunTerrainDropdownListWidget({super.key});

  @override
  State<RunTerrainDropdownListWidget> createState() =>
      _RunTerrainDropdownListWidgetState();
}

class _RunTerrainDropdownListWidgetState
    extends State<RunTerrainDropdownListWidget> {
  late RunTerrainDropdownListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RunTerrainDropdownListModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              color: Color(0x23000000),
              offset: Offset(
                0.0,
                5.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(
                builder: (context) {
                  final listRunTerrain =
                      FFAppConstants.RunTerrainOptions.toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listRunTerrain.length,
                    itemBuilder: (context, listRunTerrainIndex) {
                      final listRunTerrainItem =
                          listRunTerrain[listRunTerrainIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().SelectedRunTerrainHomeFilter =
                              listRunTerrainItem;
                          FFAppState().update(() {});
                          if (FFAppState().updater) {
                            FFAppState().updater = false;
                            safeSetState(() {});
                          } else {
                            FFAppState().updater = true;
                            safeSetState(() {});
                          }

                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 14.0, 0.0, 14.0),
                              child: Text(
                                listRunTerrainItem,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            if (listRunTerrainItem ==
                                FFAppState().SelectedRunTerrainHomeFilter)
                              Icon(
                                FFIcons.kcheck,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
