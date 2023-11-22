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
import 'form_poem_model.dart';
export 'form_poem_model.dart';

class FormPoemWidget extends StatefulWidget {
  const FormPoemWidget({Key? key}) : super(key: key);

  @override
  _FormPoemWidgetState createState() => _FormPoemWidgetState();
}

class _FormPoemWidgetState extends State<FormPoemWidget> {
  late FormPoemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormPoemModel());

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
              'evv7hbhs' /* Create a poem for children */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  color: Color(0xFF8027FF),
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
                                'https://images.unsplash.com/photo-1529522210435-26cb9e92a33d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8cG9lbXxlbnwwfHx8fDE2OTExNzIyNzB8MA&ixlib=rb-4.0.3&q=80&w=1080',
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
                                  'gojxg73m' /* Child's Name (main character) */,
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
                                  'ow72bwzw' /* Bruno */,
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
                                  '1tz2r6wn' /* Theme: */,
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
                                  'g6pztrgz' /* Love */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'ute8q0rj' /* Grit */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'utj68rhl' /* Learning to learn */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'faxz7f4g' /* Modern gender roles */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ahdqvu0h' /* Growth mindset */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'txgsrrb1' /* Love */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '73l17hhi' /* Power of diversity */,
                                )
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDTopicThemeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                '50hnu01d' /* Please select the theme... */,
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
                                  'un7bmkj1' /* Child stage: */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDChildAgeValueController ??=
                                  FormFieldController<String>(
                                _model.dDChildAgeValue ??=
                                    FFLocalizations.of(context).getText(
                                  'o6h3xft4' /* New born */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'xemb68k1' /* New born */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vchc22y3' /* 6 months */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hkm72oyz' /* 8 months */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3gm7eewd' /* 1 year */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dwx8dnqw' /* 2 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fvy1x1i5' /* 3 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ac0dokys' /* 4 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'drkdtsdd' /* 5 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kmsyr3tz' /* 6 years */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'j8idhgpw' /* 7 years */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dDChildAgeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                'wfqkbutx' /* Please select... */,
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
                                  '30snbmgo' /* Environment of the story: */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDEnviromentValueController ??=
                                  FormFieldController<String>(
                                _model.dDEnviromentValue ??=
                                    FFLocalizations.of(context).getText(
                                  '4wpkp5af' /* Jungle */,
                                ),
                              ),
                              options: [
                                FFLocalizations.of(context).getText(
                                  '91vmmy4b' /* Jungle */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ut5x6jm6' /* Space */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'utc2u2wg' /* Under the sea */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0g6rhx8u' /* Home */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mylkonyx' /* Family */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'k7740vf1' /* Beach */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'nytd0ei1' /* Mountain */,
                                )
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDEnviromentValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                'axeid3ix' /* Please select... */,
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
                                  'Create a ${_model.dDTopicThemeValue} poem in a ${_model.dDEnviromentValue} environment for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.',
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
                                        'Create a ${_model.dDTopicThemeValue} poem in a ${_model.dDEnviromentValue} environment for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.';
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
                                  'a1morq4y' /* Create */,
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
