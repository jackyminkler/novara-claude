import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'activity_details_divider_model.dart';
export 'activity_details_divider_model.dart';

class ActivityDetailsDividerWidget extends StatefulWidget {
  const ActivityDetailsDividerWidget({super.key});

  @override
  State<ActivityDetailsDividerWidget> createState() =>
      _ActivityDetailsDividerWidgetState();
}

class _ActivityDetailsDividerWidgetState
    extends State<ActivityDetailsDividerWidget> {
  late ActivityDetailsDividerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityDetailsDividerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        Container(
          width: double.infinity,
          height: 2.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StyledDivider(
                height: 0.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).border,
                lineStyle: DividerLineStyle.dashed,
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: 90.0 * (math.pi / 180),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 1.0),
                children: [
                  Container(
                    width: 20.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.5),
                    child: Icon(
                      FFIcons.k22,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 21.0,
                    ),
                  ),
                ],
              ),
            ),
            Transform.rotate(
              angle: 270.0 * (math.pi / 180),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 1.0),
                children: [
                  Container(
                    width: 20.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.5),
                    child: Icon(
                      FFIcons.k22,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 21.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
