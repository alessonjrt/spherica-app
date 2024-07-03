import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'rate_experience2_widget.dart' show RateExperience2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RateExperience2Model extends FlutterFlowModel<RateExperience2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for subject widget.
  String? subjectValue;
  FormFieldController<String>? subjectValueController;
  // State field(s) for grade widget.
  String? gradeValue;
  FormFieldController<String>? gradeValueController;
  // State field(s) for message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;
  String? _messageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Custom Action - convertNoteToNumber] action in Button widget.
  int? noteNumber;
  // Stores action output result for [Backend Call - API (Change Nps Note)] action in Button widget.
  ApiCallResponse? apiNoteResponse;
  // Stores action output result for [Backend Call - API (Get Nps)] action in Button widget.
  ApiCallResponse? npsResponse;

  @override
  void initState(BuildContext context) {
    messageTextControllerValidator = _messageTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
