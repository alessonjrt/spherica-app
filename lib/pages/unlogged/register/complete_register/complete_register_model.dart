import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import 'complete_register_widget.dart' show CompleteRegisterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteRegisterModel extends FlutterFlowModel<CompleteRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for diagnosis widget.
  String? diagnosisValue;
  FormFieldController<String>? diagnosisValueController;
  // State field(s) for useLens widget.
  String? useLensValue;
  FormFieldController<String>? useLensValueController;
  // State field(s) for lensType widget.
  String? lensTypeValue;
  FormFieldController<String>? lensTypeValueController;
  // State field(s) for lensBrand widget.
  String? lensBrandValue;
  FormFieldController<String>? lensBrandValueController;
  // Stores action output result for [Backend Call - API (Change Client Register Info)] action in Button widget.
  ApiCallResponse? chageUser;
  // Stores action output result for [Backend Call - API (Me)] action in Button widget.
  ApiCallResponse? meResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
