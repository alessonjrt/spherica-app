import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/bottom_tab/bottom_tab_widget.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prescriptions_model.dart';
export 'prescriptions_model.dart';

class PrescriptionsWidget extends StatefulWidget {
  const PrescriptionsWidget({super.key});

  @override
  State<PrescriptionsWidget> createState() => _PrescriptionsWidgetState();
}

class _PrescriptionsWidgetState extends State<PrescriptionsWidget> {
  late PrescriptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrescriptionsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedRevenue = RevenueStruct();
      setState(() {});
      _model.apiResulthe2 = await RevenueGroup.getRevenuesCall.call(
        profilesId: FFAppState().selectedProfile.id,
        token: currentAuthenticationToken,
      );

      if ((_model.apiResulthe2?.succeeded ?? true)) {
        FFAppState().revenues = [];
        setState(() {});
        FFAppState().revenues = (getJsonField(
          (_model.apiResulthe2?.jsonBody ?? ''),
          r'''$''',
          true,
        )!
                .toList()
                .map<RevenueListStruct?>(RevenueListStruct.maybeFromMap)
                .toList() as Iterable<RevenueListStruct?>)
            .withoutNulls
            .toList()
            .cast<RevenueListStruct>();
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                  FFAppState().selectedProfile = ProfileStruct();
                  setState(() {});
                  FFAppState().revenues = [];
                  setState(() {});

                  context.pushNamed('Profiles');
                },
              ),
              Text(
                FFAppState().selectedProfile.name,
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
                  FFAppState().selectedRevenue = RevenueStruct();
                  FFAppState().update(() {});

                  context.pushNamed('NewPrescription');
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0xFFEAECF0),
                      ),
                      Builder(
                        builder: (context) {
                          final revenueList = FFAppState().revenues.toList();
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(revenueList.length,
                                (revenueListIndex) {
                              final revenueListItem =
                                  revenueList[revenueListIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedResponse = await RevenueGroup
                                      .getRevenueByIdCall
                                      .call(
                                    revenueId: revenueListItem.id,
                                    token: currentAuthenticationToken,
                                  );

                                  FFAppState().selectedRevenue =
                                      RevenueStruct();
                                  setState(() {});
                                  FFAppState().selectedRevenue =
                                      RevenueStruct.maybeFromMap(getJsonField(
                                    (_model.selectedResponse?.jsonBody ?? ''),
                                    r'''$''',
                                  ))!;
                                  setState(() {});

                                  context.pushNamed('PrescriptionDetails');

                                  setState(() {});
                                },
                                child: Container(
                                  height: 72.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          revenueListItem.title,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_sharp,
                                          color: Color(0xFFC8CAD0),
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('EditProfile');
                  },
                  text: 'Editar perfil',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 44.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                    elevation: 1.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  showLoadingIndicator: false,
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
}
