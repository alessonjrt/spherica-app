
import 'package:spherica/models/reminder.dart';

import '../../../../services/reminder_service.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_reminder_widget.dart' show NewReminderWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class NewReminderModel extends FlutterFlowModel<NewReminderWidget> {
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

  final ReminderManager _reminderManager = ReminderManager();

  int _extractNumber(String interval) {
    final regex = RegExp(r'\d+');

    final matches = regex.allMatches(interval);

    if (matches.isNotEmpty) {
      return int.parse(matches.first.group(0)!);
    }

    return 0;
  }

  int _calculateHourInterval(int repeatTime) {
    return ((24 / repeatTime) * 60).round();
  }

  void createReminder() {
  try {
      if (formKey.currentState!.validate()) {
      final timeParts = timeTextController!.text.split(':');
      final int hour = int.parse(timeParts[0]);
      final int minute = int.parse(timeParts[1]);
      final String title = titleTextController!.text;
      final String description = useTextController!.text;
      const bool enabled = true;

      Reminder reminder = Reminder(
        hour: hour,
        minute: minute,
        title: title,
        description: description,
        enabled: enabled,
        repeat: reapeatHourValue != null,
        repeatCount:
            reapeatHourValue != null ? _extractNumber(reapeatHourValue!) : 0,
        repeatInterval: reapeatHourValue != null
            ? _calculateHourInterval(_extractNumber(reapeatHourValue!))
            : 0,
      );
      _reminderManager.createReminder(reminder);
    }
  } catch (e) {
    throw 'Não foi possível criar um lembrete.';
  }
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
