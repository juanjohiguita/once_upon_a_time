import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_poem_widget.dart' show FormPoemWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormPoemModel extends FlutterFlowModel<FormPoemWidget> {
  ///  Local state fields for this page.

  String? resultAPI = '';

  bool email = false;

  String prompt = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Textfield_mainCharacter widget.
  FocusNode? textfieldMainCharacterFocusNode;
  TextEditingController? textfieldMainCharacterController;
  String? Function(BuildContext, String?)?
      textfieldMainCharacterControllerValidator;
  // State field(s) for DDTopic_Theme widget.
  String? dDTopicThemeValue;
  FormFieldController<String>? dDTopicThemeValueController;
  // State field(s) for DD_child_age widget.
  String? dDChildAgeValue;
  FormFieldController<String>? dDChildAgeValueController;
  // State field(s) for DD_enviroment widget.
  String? dDEnviromentValue;
  FormFieldController<String>? dDEnviromentValueController;
  // Stores action output result for [Backend Call - API (ChatGPT)] action in Button widget.
  ApiCallResponse? apiResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textfieldMainCharacterFocusNode?.dispose();
    textfieldMainCharacterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
