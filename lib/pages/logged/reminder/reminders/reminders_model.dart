import 'package:spherica/services/reminder_service.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import 'reminders_widget.dart' show RemindersWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RemindersModel extends FlutterFlowModel<RemindersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    bottomTabModel = createModel(context, () => BottomTabModel());
  }


  ReminderManager reminderManager = ReminderManager();

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomTabModel.dispose();
  }
}
