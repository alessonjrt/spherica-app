import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'rate_experience_widget.dart' show RateExperienceWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RateExperienceModel extends FlutterFlowModel<RateExperienceWidget> {
  ///  Local state fields for this page.

  int? rateNumber;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for comment widget.
  FocusNode? commentFocusNode;
  TextEditingController? commentTextController;
  String? Function(BuildContext, String?)? commentTextControllerValidator;
  String? _commentTextControllerValidator(BuildContext context, String? val) {
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
    commentTextControllerValidator = _commentTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commentFocusNode?.dispose();
    commentTextController?.dispose();
  }
}
