import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_story_model.dart';
export 'form_story_model.dart';

class FormStoryWidget extends StatefulWidget {
  const FormStoryWidget({Key? key}) : super(key: key);

  @override
  _FormStoryWidgetState createState() => _FormStoryWidgetState();
}

class _FormStoryWidgetState extends State<FormStoryWidget> {
  late FormStoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormStoryModel());

    _model.textfieldMainCharacterController ??= TextEditingController();
    _model.textfieldMainCharacterFocusNode ??= FocusNode();

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
          leading: FFButtonWidget(
            onPressed: () async {
              context.safePop();
            },
            text: '',
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).secondary,
              size: 50.0,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                  ),
              elevation: 0.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '68bo8a51' /* Create a story for children */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondary,
                ),
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 1267.0,
                          height: 252.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://images.unsplash.com/photo-1532012197267-da84d127e765?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxzdG9yeXxlbnwwfHx8fDE2OTEwODQ1MDF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'znq17oa7' /* Child's Name (main character) */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller:
                                  _model.textfieldMainCharacterController,
                              focusNode: _model.textfieldMainCharacterFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: FFLocalizations.of(context).getText(
                                  'l9jswgdh' /* Bruno */,
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model
                                  .textfieldMainCharacterControllerValidator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jhy3hj9p' /* Theme: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDTopicThemeValueController ??=
                                  FormFieldController<String>(
                                _model.dDTopicThemeValue ??=
                                    FFLocalizations.of(context).getText(
                                  'c8re3cht' /* Love */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  '7zydwjvc' /* Grit */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'bodsc7qu' /* Learning to learn */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '06rl2c7v' /* Modern gender roles */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ojywyf38' /* Growth mindset */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'nupdpizk' /* Love */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ad6kuh8i' /* Power of diversity */,
                                )
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDTopicThemeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                '942kkyou' /* Please select the theme... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jeaixob5' /* Reading duration: */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDDurationValueController ??=
                                  FormFieldController<String>(
                                _model.dDDurationValue ??=
                                    FFLocalizations.of(context).getText(
                                  'mkamv8j7' /* 5 minutes */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'xlbexov9' /* 5 minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fzbgzber' /* 10 minutes */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dDDurationValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                'qpjdurdf' /* Please select... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'osp6ezxf' /* Child stage: */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDChildAgeValueController ??=
                                  FormFieldController<String>(
                                _model.dDChildAgeValue ??=
                                    FFLocalizations.of(context).getText(
                                  '08mkq0zp' /* New born */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'fnwmewhq' /* New born */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '31njkxa1' /* 6 months */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'avom0wg4' /* 8 months */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yxdaim67' /* 1 year */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '70wl7rvf' /* 2 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ysaa3sqh' /* 3 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '90xh61bu' /* 4 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dyl0fxm4' /* 5 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '11k27xp4' /* 6 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'q11ckhsu' /* 7 years */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dDChildAgeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                'xqaavc7e' /* Please select... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'rlsaaf2y' /* Environment of the story: */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDEnviromentValueController ??=
                                  FormFieldController<String>(
                                _model.dDEnviromentValue ??=
                                    FFLocalizations.of(context).getText(
                                  '5k8z0vaw' /* Jungle */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'mkd2b540' /* Jungle */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'sbti8y4f' /* Space */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0hte6npc' /* Under the sea */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'go85dt2s' /* Home */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4lsq5owq' /* Family */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'q1pancyg' /* Beach */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'e1g2dgyu' /* Mountain */,
                                )
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDEnviromentValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                'joa5hnpg' /* Please select... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  'Create a ${_model.dDTopicThemeValue} story in a ${_model.dDEnviromentValue} environment that can be read in ${_model.dDDurationValue} for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    _model.prompt =
                                        'Create a ${_model.dDTopicThemeValue} story in a ${_model.dDEnviromentValue} environment that can be read in ${_model.dDDurationValue} for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.';
                                  });
                                  _model.apiResult = await ChatGPTCall.call(
                                    openaiApiKey:
                                        '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',
                                    message: _model.prompt,
                                  );
                                  if ((_model.apiResult?.succeeded ?? true)) {
                                    setState(() {
                                      _model.resultAPI =
                                          ChatGPTCall.responseAPI(
                                        (_model.apiResult?.jsonBody ?? ''),
                                      ).toString();
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Success',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                  } else {
                                    setState(() {
                                      _model.resultAPI = 'Error';
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Error',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                text: FFLocalizations.of(context).getText(
                                  'c1zhwe8i' /* Create */,
                                ),
                                icon: Icon(
                                  Icons.receipt_long,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 48.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 4.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 50.0),
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: _model.resultAPI!,
                                    style: TextStyle(),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
