import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'social_media_model.dart';
export 'social_media_model.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({
    super.key,
    required this.userRef,
  });

  final UsersRecord? userRef;

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  late SocialMediaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialMediaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SOCIAL_MEDIA_SocialMedia_ON_INIT_STATE');
      logFirebaseEvent('SocialMedia_backend_call');
      _model.userRef =
          await UsersRecord.getDocumentOnce(widget.userRef!.reference);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (valueOrDefault(currentUserDocument?.instagram, '') != '') ||
          (valueOrDefault(currentUserDocument?.strava, '') != '') ||
          (valueOrDefault(currentUserDocument?.heylo, '') != ''),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: AuthUserStreamWidget(
            builder: (context) => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (valueOrDefault(currentUserDocument?.instagram, '') != '')
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'SOCIAL_MEDIA_COMP_Icon_9yq7dwps_ON_TAP');
                      logFirebaseEvent('Icon_launch_u_r_l');
                      await launchURL(widget.userRef!.instagram);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 23.0,
                    ),
                  ),
                if (valueOrDefault(currentUserDocument?.strava, '') != '')
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'SOCIAL_MEDIA_COMP_Icon_eai4wwiu_ON_TAP');
                      logFirebaseEvent('Icon_launch_u_r_l');
                      await launchURL(widget.userRef!.strava);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.strava,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 23.0,
                    ),
                  ),
                if (valueOrDefault(currentUserDocument?.heylo, '') != '')
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'SOCIAL_MEDIA_COMP_Icon_axiz3k6e_ON_TAP');
                      logFirebaseEvent('Icon_launch_u_r_l');
                      await launchURL(widget.userRef!.heylo);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.link,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 23.0,
                    ),
                  ),
              ].divide(SizedBox(width: 40.0)),
            ),
          ),
        ),
      ),
    );
  }
}
