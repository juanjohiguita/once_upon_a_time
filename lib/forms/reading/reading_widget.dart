import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'reading_model.dart';
export 'reading_model.dart';

class ReadingWidget extends StatefulWidget {
  const ReadingWidget({
    Key? key,
    String? resultAPI,
    required this.title,
    required this.enviroment,
    required this.saved,
  })  : this.resultAPI = resultAPI ?? 'null',
        super(key: key);

  final String resultAPI;
  final String? title;
  final String? enviroment;
  final bool? saved;

  @override
  _ReadingWidgetState createState() => _ReadingWidgetState();
}

class _ReadingWidgetState extends State<ReadingWidget>
    with TickerProviderStateMixin {
  late ReadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReadingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.enviroment == 'Jungle') {
        _model.soundPlayer1 ??= AudioPlayer();
        if (_model.soundPlayer1!.playing) {
          await _model.soundPlayer1!.stop();
        }
        _model.soundPlayer1!.setVolume(0.3);
        _model.soundPlayer1!
            .setAsset('assets/audios/Jungle.mp3')
            .then((_) => _model.soundPlayer1!.play());
      } else {
        if (widget.enviroment == 'Space') {
          _model.soundPlayer2 ??= AudioPlayer();
          if (_model.soundPlayer2!.playing) {
            await _model.soundPlayer2!.stop();
          }
          _model.soundPlayer2!.setVolume(1.0);
          _model.soundPlayer2!
              .setAsset('assets/audios/Space.mp3')
              .then((_) => _model.soundPlayer2!.play());
        } else {
          if (widget.enviroment == 'Sea') {
            _model.soundPlayer3 ??= AudioPlayer();
            if (_model.soundPlayer3!.playing) {
              await _model.soundPlayer3!.stop();
            }
            _model.soundPlayer3!.setVolume(1.0);
            _model.soundPlayer3!
                .setAsset('assets/audios/Sea.mp3')
                .then((_) => _model.soundPlayer3!.play());
          } else {
            if (widget.enviroment == 'Home') {
              _model.soundPlayer4 ??= AudioPlayer();
              if (_model.soundPlayer4!.playing) {
                await _model.soundPlayer4!.stop();
              }
              _model.soundPlayer4!.setVolume(1.0);
              _model.soundPlayer4!
                  .setAsset('assets/audios/fellowship-171074.m4a')
                  .then((_) => _model.soundPlayer4!.play());
            } else {
              if (widget.enviroment == 'Beach') {
                _model.soundPlayer5 ??= AudioPlayer();
                if (_model.soundPlayer5!.playing) {
                  await _model.soundPlayer5!.stop();
                }
                _model.soundPlayer5!.setVolume(1.0);
                _model.soundPlayer5!
                    .setAsset('assets/audios/Playa.mp3')
                    .then((_) => _model.soundPlayer5!.play());
              } else {
                if (widget.enviroment == 'Mountain') {
                  _model.soundPlayer6 ??= AudioPlayer();
                  if (_model.soundPlayer6!.playing) {
                    await _model.soundPlayer6!.stop();
                  }
                  _model.soundPlayer6!.setVolume(0.3);
                  _model.soundPlayer6!
                      .setAsset('assets/audios/videoplayback.m4a')
                      .then((_) => _model.soundPlayer6!.play());
                }
              }
            }
          }
        }
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              _model.soundPlayer1?.stop();
              _model.soundPlayer4?.stop();
              _model.soundPlayer6?.stop();
              _model.soundPlayer2?.stop();
              _model.soundPlayer5?.stop();
              _model.soundPlayer3?.stop();
              if (widget.saved == false) {
                context.pushNamed('Home');
              } else {
                context.pushNamed('ListResources');
              }
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: 'locationImage',
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/b59134cfd2bb0bd2df8de3408face512.jpg',
                              width: double.infinity,
                              height: 250.0,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment(0.00, -1.00),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation']!),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 23.0, 0.0, 0.0),
                          child: Text(
                            widget.title!,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: widget.resultAPI,
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (widget.saved == false)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x55000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Did you like it?',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              var resultAPIRecordReference =
                                  ResultAPIRecord.collection.doc();
                              await resultAPIRecordReference
                                  .set(createResultAPIRecordData(
                                idUser: currentUserUid,
                                text: widget.resultAPI,
                                title: widget.title,
                                env: widget.enviroment,
                              ));
                              _model.result =
                                  ResultAPIRecord.getDocumentFromData(
                                      createResultAPIRecordData(
                                        idUser: currentUserUid,
                                        text: widget.resultAPI,
                                        title: widget.title,
                                        env: widget.enviroment,
                                      ),
                                      resultAPIRecordReference);
                              if (_model.result != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Success',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Error',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            text: 'Save',
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
