import 'package:get_storage/get_storage.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final box = GetStorage();
  int idNo = 0;
  @override
  void initState() {
    super.initState();
    idNo = box.read('idNo');
    _model = createModel(context, () => DashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MedicalStaffInfoRecord>>(
      stream: queryMedicalStaffInfoRecord(
        queryBuilder: (medicalStaffInfoRecord) => medicalStaffInfoRecord.where(
          Filter(
            'idNo',
            isEqualTo: idNo,
          ),
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF4CA9EE),
                  ),
                ),
              ),
            ),
          );
        }
        List<MedicalStaffInfoRecord> dashboardMedicalStaffInfoRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        print('aaaaa : $dashboardMedicalStaffInfoRecordList');
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final dashboardMedicalStaffInfoRecord =
            dashboardMedicalStaffInfoRecordList.isNotEmpty
                ? dashboardMedicalStaffInfoRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Hero(
                              tag: 'Dashboard',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/back.png',
                                  height: 883.0,
                                  width: 410.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.21),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 200.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 4.0, 10.0, 20.0),
                                    child: Container(
                                      width: 160.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x6414181B),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('-Patient-Info');
                                        },
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 10.0, 12.0, 50.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    ' Patient info',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Merriweather',
                                                          color:
                                                              Color(0xFF007CAA),
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.14, 0.24),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/personal-information1.png',
                                                  width: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 4.0, 28.0, 20.0),
                                    child: Container(
                                      width: 160.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x6E14181B),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('-Generated-Report');
                                        },
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 8.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      '-Generated-Report');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Text(
                                                        'Generate Report',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Merriweather',
                                                                  color: Color(
                                                                      0xFF007CAA),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.09, 0.75),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/report_(1).png',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.02),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Container(
                                width: 410.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    color: Color(0xA914181B),
                                  ),
                                ),
                                child: Container(
                                  width: 3.0,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      25.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 55.0,
                                                icon: const Icon(
                                                  Icons.home_outlined,
                                                  color: Color(0x6414181B),
                                                  size: 37.0,
                                                ),
                                                onPressed: () async {
                                                  context
                                                      .pushNamed('-Dashboard');
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.43, -0.74),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 4.0, 0.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 44.0,
                                                  icon: Icon(
                                                    Icons
                                                        .notifications_none_rounded,
                                                    color: Color(0x6E14181B),
                                                    size: 37.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        '-Notifications');
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      60.0, 0.0, 0.0, 10.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 43.0,
                                                icon: Icon(
                                                  Icons.access_time,
                                                  color: Color(0x6E14181B),
                                                  size: 37.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed('-Timer');
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 0.0, 0.0, 10.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 49.0,
                                                icon: Icon(
                                                  Icons.perm_identity,
                                                  color: Color(0x6E14181B),
                                                  size: 37.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                      '-Account-Setting');
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -0.25),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 150.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        26.0, 4.0, 20.0, 20.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('-Reserve-Bed');
                                      },
                                      child: Container(
                                        width: 301.0,
                                        height: 105.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x6414181B),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('-Reserve-Bed');
                                          },
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12.0, 10.0, 12.0, 8.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Text(
                                                        'Reserve Bed & Request  Bed',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Merriweather',
                                                                  color: Color(
                                                                      0xFF007CAA),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.93),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    9.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/hospital-bed.png',
                                                            width: 50.0,
                                                            fit: BoxFit.contain,
                                                            alignment:
                                                                Alignment(
                                                                    0.0, 0.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.55),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    45.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Hello,',
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: 'Merriweather',
                                        color: Color(0xA914181B),
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    dashboardMedicalStaffInfoRecord?.name,
                                    'Amelia Renata',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: 'Merriweather',
                                        color: Color(0xFF007CAA),
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
