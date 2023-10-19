import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FieldKakitangan widget.
  TextEditingController? fieldKakitanganController;
  String? Function(BuildContext, String?)? fieldKakitanganControllerValidator;
  String? _fieldKakitanganControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for FieldKatalaluan widget.
  TextEditingController? fieldKatalaluanController;
  late bool fieldKatalaluanVisibility;
  String? Function(BuildContext, String?)? fieldKatalaluanControllerValidator;
  String? _fieldKatalaluanControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (User Login)] action in Button widget.
  ApiCallResponse? apiResultLogin;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fieldKakitanganControllerValidator = _fieldKakitanganControllerValidator;
    fieldKatalaluanVisibility = false;
    fieldKatalaluanControllerValidator = _fieldKatalaluanControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    fieldKakitanganController?.dispose();
    fieldKatalaluanController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
