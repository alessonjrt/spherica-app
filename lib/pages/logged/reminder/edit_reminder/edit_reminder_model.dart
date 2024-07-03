import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_reminder_widget.dart' show EditReminderWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditReminderModel extends FlutterFlowModel<EditReminderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  final timeMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  String? _timeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for repeatDay widget.
  List<String>? repeatDayValue;
  FormFieldController<List<String>>? repeatDayValueController;
  // State field(s) for reapeatHour widget.
  String? reapeatHourValue;
  FormFieldController<String>? reapeatHourValueController;
  // State field(s) for minDays widget.
  String? minDaysValue;
  FormFieldController<String>? minDaysValueController;
  // State field(s) for maxDays widget.
  String? maxDaysValue;
  FormFieldController<String>? maxDaysValueController;
  // State field(s) for use widget.
  FocusNode? useFocusNode;
  TextEditingController? useTextController;
  String? Function(BuildContext, String?)? useTextControllerValidator;
  String? _useTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    timeTextControllerValidator = _timeTextControllerValidator;
    titleTextControllerValidator = _titleTextControllerValidator;
    useTextControllerValidator = _useTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    timeFocusNode?.dispose();
    timeTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    useFocusNode?.dispose();
    useTextController?.dispose();
  }
}
