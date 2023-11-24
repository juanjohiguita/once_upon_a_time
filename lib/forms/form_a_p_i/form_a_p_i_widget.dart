import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_a_p_i_model.dart';
export 'form_a_p_i_model.dart';

class FormAPIWidget extends StatefulWidget {
  const FormAPIWidget({
    Key? key,
    required this.type,
    String? type2,
  })  : this.type2 = type2 ?? '',
        super(key: key);

  final String? type;
  final String type2;

  @override
  _FormAPIWidgetState createState() => _FormAPIWidgetState();
}

class _FormAPIWidgetState extends State<FormAPIWidget> {
  late FormAPIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormAPIModel());

    _model.textfieldMainCharacterController ??= TextEditingController();
    _model.textfieldMainCharacterFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textfieldMainCharacterController?.text = 'Bruno';
        }));
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
            'Create ${widget.type} for children',
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
                          height: 228.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/52a695b46248ad8ddc014be3533089cd.jpg',
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
                                'Child\'s Name (main character)',
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
                                hintText: 'Bruno',
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
                                'Theme:',
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
                                _model.dDTopicThemeValue ??= 'Love',
                              ),
                              options: [
                                'Grit',
                                'Learning to learn',
                                'Modern gender roles',
                                'Growth mindset',
                                'Love',
                                'Power of diversity'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDTopicThemeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Please select the theme...',
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
                                'Reading duration:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDDurationValueController ??=
                                  FormFieldController<String>(
                                _model.dDDurationValue ??= '5 minutes',
                              ),
                              options: ['5 minutes', '10 minutes'],
                              onChanged: (val) =>
                                  setState(() => _model.dDDurationValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Please select...',
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
                                'Child stage:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDChildAgeValueController ??=
                                  FormFieldController<String>(
                                _model.dDChildAgeValue ??= 'New born',
                              ),
                              options: [
                                'New born',
                                '6 months',
                                '8 months',
                                '1 year',
                                '2 years',
                                '3 years',
                                '4 years',
                                '5 years',
                                '6 years',
                                '7 years'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dDChildAgeValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Please select...',
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
                                'Environment:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dDEnviromentValueController ??=
                                  FormFieldController<String>(
                                _model.dDEnviromentValue ??= 'Jungle',
                              ),
                              options: [
                                'Jungle',
                                'Space',
                                'Sea',
                                'Home',
                                'Beach',
                                'Mountain'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dDEnviromentValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Please select...',
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
                                  'Create a ${_model.dDTopicThemeValue} ${widget.type2} in a ${_model.dDEnviromentValue} environment that can be read in ${_model.dDDurationValue} for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    _model.prompt =
                                        'Create a ${_model.dDTopicThemeValue} ${widget.type2} in a ${_model.dDEnviromentValue} environment that can be read in ${_model.dDDurationValue} for a ${_model.dDChildAgeValue} child with ${_model.textfieldMainCharacterController.text} as the main character.';
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

                                    context.pushNamed(
                                      'Reading',
                                      queryParameters: {
                                        'resultAPI': serializeParam(
                                          _model.resultAPI,
                                          ParamType.String,
                                        ),
                                        'title': serializeParam(
                                          '${_model.dDTopicThemeValue} ${widget.type2}: ${_model.textfieldMainCharacterController.text} in ${_model.dDEnviromentValue}',
                                          ParamType.String,
                                        ),
                                        'saved': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                        'enviroment': serializeParam(
                                          _model.dDEnviromentValue,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          (_model.apiResult?.jsonBody ?? '')
                                              .toString(),
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
                                text: 'Create',
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
                                        fontSize: 18.0,
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
                          ].divide(SizedBox(height: 12.0)),
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
