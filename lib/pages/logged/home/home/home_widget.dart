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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.oneOrTwo = await actions.getRandomOneOrTwo();
      _model.oneOrTwoBanner = null;
      setState(() {});
      _model.oneOrTwoBanner = _model.oneOrTwo;
      setState(() {});
      _model.apiResultfly = await BannersGroup.getBannersCall.call(
        clientId: currentUserData?.client?.id,
        token: currentAuthenticationToken,
      );

      if ((_model.apiResultfly?.succeeded ?? true)) {
        FFAppState().banners = [];
        setState(() {});
        FFAppState().banners = (getJsonField(
          (_model.apiResultfly?.jsonBody ?? ''),
          r'''$.items''',
          true,
        )!
                .toList()
                .map<BannerStruct?>(BannerStruct.maybeFromMap)
                .toList() as Iterable<BannerStruct?>)
            .withoutNulls
            .toList()
            .cast<BannerStruct>();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/home_background.png',
                                ).image,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 13.0, 0.0, 17.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/light_logo.png',
                                      width: 133.0,
                                      height: 32.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 2.0),
                                    child: Text(
                                      'Olá ',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        currentUserData?.user?.name,
                                        'fulano',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 2.0),
                                    child: Text(
                                      '👋',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 12.0),
                                child: Text(
                                  'Seja bem-vindo!',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                              if ((_model.oneOrTwoBanner == 1) &&
                                  (currentUserData?.client?.diagnostic !=
                                          null &&
                                      currentUserData?.client?.diagnostic !=
                                          ''))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.homeCardModel1,
                                    updateCallback: () => setState(() {}),
                                    child: HomeCardWidget(
                                      title: 'Responda e Ganhe',
                                      description:
                                          'Responda nossa pesquisa e \nganhe benefícios exclusivos',
                                      buttonText: 'Participe',
                                      type: 'heart',
                                      onPress: () async {
                                        context.pushNamed('Nps');
                                      },
                                    ),
                                  ),
                                ),
                              if ((_model.oneOrTwoBanner == 2) &&
                                  (currentUserData?.client?.diagnostic !=
                                          null &&
                                      currentUserData?.client?.diagnostic !=
                                          ''))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.homeCardModel2,
                                    updateCallback: () => setState(() {}),
                                    child: HomeCardWidget(
                                      title: 'Como podemos ajudar?',
                                      description:
                                          'Dúvidas, sugestões, elogios, problemas com adaptação...',
                                      buttonText: 'Feedback',
                                      type: 'alert',
                                      onPress: () async {
                                        context.pushNamed('Feedbacks');
                                      },
                                    ),
                                  ),
                                ),
                              if ((currentUserData?.client?.diagnostic ==
                                          null ||
                                      currentUserData?.client?.diagnostic ==
                                          '') &&
                                  ((_model.oneOrTwoBanner == 1) ||
                                      (_model.oneOrTwoBanner == 2)))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.homeCardModel3,
                                    updateCallback: () => setState(() {}),
                                    child: HomeCardWidget(
                                      title: 'Complete seu cadastro',
                                      description:
                                          'Vamos deixar seu app ainda mais personalizado para você',
                                      buttonText: 'Completar',
                                      type: 'check',
                                      onPress: () async {
                                        FFAppState().clientId = '';
                                        setState(() {});
                                        FFAppState().userId = '';
                                        setState(() {});
                                        FFAppState().token = '';
                                        setState(() {});
                                        FFAppState().userId =
                                            currentUserData!.user.id;
                                        setState(() {});
                                        FFAppState().clientId =
                                            currentUserData!.client.id;
                                        setState(() {});
                                        FFAppState().token =
                                            currentAuthenticationToken!;
                                        setState(() {});

                                        context.pushNamed('CompleteRegister');
                                      },
                                    ),
                                  ),
                                ),
                              Builder(
                                builder: (context) {
                                  final bannerList =
                                      FFAppState().banners.toList();
                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      20.0,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: bannerList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, bannerListIndex) {
                                      final bannerListItem =
                                          bannerList[bannerListIndex];
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().selectedBanner =
                                                BannerStruct();
                                            setState(() {});
                                            FFAppState().selectedBanner =
                                                bannerListItem;
                                            setState(() {});

                                            context.pushNamed('Promotion');
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.9,
                                            height: 273.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  bannerListItem.image.url,
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            alignment:
                                                AlignmentDirectional(-1.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 16.0),
                                              child: Text(
                                                bannerListItem.title,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.bottomTabModel,
                updateCallback: () => setState(() {}),
                child: BottomTabWidget(
                  page: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
