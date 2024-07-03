import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import '/pages/logged/home/home_card/home_card_widget.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  int? oneOrTwoBanner;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getRandomOneOrTwo] action in Home widget.
  int? oneOrTwo;
  // Stores action output result for [Backend Call - API (Get Banners)] action in Home widget.
  ApiCallResponse? apiResultfly;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel1;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel2;
  // Model for HomeCard component.
  late HomeCardModel homeCardModel3;
  // Model for BottomTab component.
  late BottomTabModel bottomTabModel;

  @override
  void initState(BuildContext context) {
    homeCardModel1 = createModel(context, () => HomeCardModel());
    homeCardModel2 = createModel(context, () => HomeCardModel());
    homeCardModel3 = createModel(context, () => HomeCardModel());
    bottomTabModel = createModel(context, () => BottomTabModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeCardModel1.dispose();
    homeCardModel2.dispose();
    homeCardModel3.dispose();
    bottomTabModel.dispose();
  }
}
