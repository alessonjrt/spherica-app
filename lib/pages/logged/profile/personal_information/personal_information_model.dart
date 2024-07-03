import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import '/backend/schema/structs/index.dart';
import 'personal_information_widget.dart' show PersonalInformationWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PersonalInformationModel
    extends FlutterFlowModel<PersonalInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for document widget.
  FocusNode? documentFocusNode;
  TextEditingController? documentTextController;
  final documentMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? documentTextControllerValidator;
  String? _documentTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 14) {
      return 'CPF incompleto';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email inválido';
    }
    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode1;
  TextEditingController? phoneTextController1;
  final phoneMask1 = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? phoneTextController1Validator;
  String? _phoneTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 15) {
      return 'Telefone incompleto';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode2;
  TextEditingController? phoneTextController2;
  final phoneMask2 = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? phoneTextController2Validator;
  String? _phoneTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 15) {
      return 'Telefone incompleto';
    }

    return null;
  }

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
  // Stores action output result for [Backend Call - API (Patch User)] action in Button widget.
  ApiCallResponse? userUpdated;
  // Stores action output result for [Backend Call - API (Change Client Register Info)] action in Button widget.
  ApiCallResponse? clientUpdated;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    documentTextControllerValidator = _documentTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    phoneTextController1Validator = _phoneTextController1Validator;
    phoneTextController2Validator = _phoneTextController2Validator;
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    documentFocusNode?.dispose();
    documentTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneFocusNode1?.dispose();
    phoneTextController1?.dispose();

    phoneFocusNode2?.dispose();
    phoneTextController2?.dispose();

    bottomTabModel.dispose();
  }
}
