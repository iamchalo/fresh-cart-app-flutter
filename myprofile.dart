import '/auth/firebase_auth/auth_util.dart';
import '/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'my_profile_page_model.dart';
export 'my_profile_page_model.dart';

class MyProfilePageWidget extends StatefulWidget {
  const MyProfilePageWidget({
    super.key,
    String? userName,
  }) : this.userName = userName ?? 'name';

  final String userName;

  static String routeName = 'MyProfilePage';
  static String routePath = 'myProfilePage';

  @override
  State<MyProfilePageWidget> createState() => _MyProfilePageWidgetState();
}

class _MyProfilePageWidgetState extends State<MyProfilePageWidget>
    with TickerProviderStateMixin {
  late MyProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProfilePageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
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
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.commonAppBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CommonAppBarWidget(
                      name: 'My profile',
                      color: false,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(EditprofilePageWidget.routeName);
                          },
                          child: Container(
                            width: 41.0,
                            height: 41.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: SvgPicture.asset(
                                'assets/images/profile-pen.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    120.0, 0.0, 120.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/vector_profile-removebg-preview.png',
                                    width: 107.09,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 32.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First name',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                                Text(
                                  widget!.userName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email Address',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                                Text(
                                  currentUserEmail,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Unique User ID',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                                Text(
                                  currentUserUid,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Satoshi'),
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
