import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    int? page,
  }) : this.page = page ?? 0;

  final int page;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent1,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40.0,
                    color: Color(0x1B000000),
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAV_BAR_COMP_HomeStack_ON_TAP');
                        logFirebaseEvent('HomeStack_navigate_to');

                        context.goNamed(
                          HomeWidget.routeName,
                          queryParameters: {
                            'selectedNavTab': serializeParam(
                              0,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.home_rounded,
                                  color: widget.page == 0
                                      ? FlutterFlowTheme.of(context).tertiary
                                      : FlutterFlowTheme.of(context)
                                          .navbarColor,
                                  size: 27.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Text(
                                    'Home',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: valueOrDefault<Color>(
                                            widget.page == 0
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : FlutterFlowTheme.of(context)
                                                    .navbarColor,
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAV_BAR_COMP_CreateStack_ON_TAP');
                        logFirebaseEvent('CreateStack_navigate_to');

                        context.pushNamed(
                          CreateActivityWidget.routeName,
                          queryParameters: {
                            'selectedNavTab': serializeParam(
                              1,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 150),
                            ),
                          },
                        );
                      },
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FFIcons.kplusCircle,
                                  color: valueOrDefault<Color>(
                                    widget.page == 1
                                        ? FlutterFlowTheme.of(context).tertiary
                                        : FlutterFlowTheme.of(context)
                                            .navbarColor,
                                    FlutterFlowTheme.of(context).navbarColor,
                                  ),
                                  size: 27.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Text(
                                    'Create',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: valueOrDefault<Color>(
                                            widget.page == 1
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : FlutterFlowTheme.of(context)
                                                    .navbarColor,
                                            FlutterFlowTheme.of(context)
                                                .navbarColor,
                                          ),
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('NAV_BAR_COMP_Stack_h7os8a82_ON_TAP');
                        logFirebaseEvent('Stack_navigate_to');

                        context.goNamed(
                          MyProfileWidget.routeName,
                          queryParameters: {
                            'selectedUserRef': serializeParam(
                              currentUserReference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(1.0, -1.0),
                                  children: [
                                    Icon(
                                      Icons.person_rounded,
                                      color: valueOrDefault<Color>(
                                        widget.page == 2
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : FlutterFlowTheme.of(context)
                                                .navbarColor,
                                        FlutterFlowTheme.of(context)
                                            .navbarColor,
                                      ),
                                      size: 27.0,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Text(
                                    'Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: valueOrDefault<Color>(
                                            widget.page == 2
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : FlutterFlowTheme.of(context)
                                                    .navbarColor,
                                            FlutterFlowTheme.of(context)
                                                .navbarColor,
                                          ),
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
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
    );
  }
}
