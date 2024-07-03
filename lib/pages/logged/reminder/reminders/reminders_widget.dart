import 'package:spherica/models/reminder.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reminders_model.dart';
export 'reminders_model.dart';

class RemindersWidget extends StatefulWidget {
  const RemindersWidget({super.key});

  @override
  State<RemindersWidget> createState() => _RemindersWidgetState();
}

class _RemindersWidgetState extends State<RemindersWidget> {
  late RemindersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemindersModel());

    _model.switchValue1 = true;
    _model.switchValue2 = false;
    _model.switchValue3 = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 56.0,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              Text(
                'Lembretes',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 56.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('NewReminder');
                },
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: ValueListenableBuilder<List<Reminder>>(
                    valueListenable:
                        _model.reminderManager.remindersListNotifier,
                    builder: (context, reminders, _) {
                      if (reminders.isNotEmpty) {
                        return ListView.builder(
                          itemCount: reminders.length,
                          itemBuilder: (context, index) {
                            final reminder = reminders[index];
                            return _buildReminder(reminder);
                          },
                        );
                      } else {
                        return const Center(
                          child: Text('Você não tem lembretes'),
                        );
                      }
                    },
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.bottomTabModel,
                updateCallback: () => setState(() {}),
                child: BottomTabWidget(
                  page: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReminder(Reminder reminder) {
    return InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            'EditReminder',
            queryParameters: {
              'reminderId': serializeParam(
                reminder.id,
                ParamType.int,
              ),
            }.withoutNulls,
          );
        },
        child: Container(
            height: 72.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              reminder.title,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '${reminder.hour.toString().padLeft(2, '0')}:${reminder.minute.toString().padLeft(2, '0')}',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Switch.adaptive(
                          value: reminder.enabled,
                          onChanged: (newValue) async {
                            _model.reminderManager
                                .updateReminderStatus(reminder.id, newValue);
                          },
                          activeColor: FlutterFlowTheme.of(context).info,
                          activeTrackColor: Color(0xFF397EF5),
                          inactiveTrackColor: Color(0xFFCECECE),
                          inactiveThumbColor: FlutterFlowTheme.of(context).info,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Color(0xFFEAECF0),
                ),
              ],
            )));
  }
}
