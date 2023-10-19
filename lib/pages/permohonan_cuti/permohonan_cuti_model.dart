import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'permohonan_cuti_widget.dart' show PermohonanCutiWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PermohonanCutiModel extends FlutterFlowModel<PermohonanCutiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for JenisCuti widget.
  String? jenisCutiValue;
  FormFieldController<String>? jenisCutiValueController;
  // State field(s) for JenisSeparuh widget.
  String? jenisSeparuhValue;
  FormFieldController<String>? jenisSeparuhValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for BilanganHari widget.
  TextEditingController? bilanganHariController;
  String? Function(BuildContext, String?)? bilanganHariControllerValidator;
  // State field(s) for SebabCuti widget.
  TextEditingController? sebabCutiController;
  String? Function(BuildContext, String?)? sebabCutiControllerValidator;
  String? _sebabCutiControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AlamatBercuti widget.
  bool? alamatBercutiValue;
  // State field(s) for NoTelefon widget.
  TextEditingController? noTelefonController;
  String? Function(BuildContext, String?)? noTelefonControllerValidator;
  // State field(s) for Alamat widget.
  TextEditingController? alamatController;
  String? Function(BuildContext, String?)? alamatControllerValidator;
  // State field(s) for Poskod widget.
  TextEditingController? poskodController;
  String? Function(BuildContext, String?)? poskodControllerValidator;
  // State field(s) for Bandar widget.
  TextEditingController? bandarController;
  String? Function(BuildContext, String?)? bandarControllerValidator;
  // State field(s) for Negeri widget.
  TextEditingController? negeriController;
  String? Function(BuildContext, String?)? negeriControllerValidator;
  // State field(s) for Ketua widget.
  TextEditingController? ketuaController;
  String? Function(BuildContext, String?)? ketuaControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Permohonan Cuti)] action in Button widget.
  ApiCallResponse? apiResultPermohonan;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sebabCutiControllerValidator = _sebabCutiControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    bilanganHariController?.dispose();
    sebabCutiController?.dispose();
    noTelefonController?.dispose();
    alamatController?.dispose();
    poskodController?.dispose();
    bandarController?.dispose();
    negeriController?.dispose();
    ketuaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
