import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'feedbacks_widget.dart' show FeedbacksWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedbacksModel extends FlutterFlowModel<FeedbacksWidget> {
  ///  Local state fields for this page.

  int? oneOrTwoFeedbacks;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getRandomOneOrTwo] action in Feedbacks widget.
  int? oneOrTwo;
  // Stores action output result for [Backend Call - API (Get Feedbacks)] action in Feedbacks widget.
  ApiCallResponse? apiResultaag;
  // Stores action output result for [Backend Call - API (Get Feedback By Id)] action in Container widget.
  ApiCallResponse? feedbackResponse;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomTabModel.dispose();
  }
}
