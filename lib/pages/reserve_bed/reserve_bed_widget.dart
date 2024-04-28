import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'reserve_bed_model.dart';
export 'reserve_bed_model.dart';

Bed dataFromJson(String str) => Bed.fromJson(json.decode(str));

class Bed {
  int? timeMin;
  int? patient;
  String? stateBed;

  Bed({
    this.timeMin,
    this.patient,
    this.stateBed,
  });

  factory Bed.fromJson(Map<String, dynamic> json) => Bed(
        timeMin: json["Time-min"],
        patient: json["patient"],
        stateBed: json["State"],
      );

  Map<String, dynamic> toJson() => {
        "Time-min": timeMin,
        "patient": patient,
        "State": stateBed,
      };
}

class ReserveBedWidget extends StatefulWidget {
  const ReserveBedWidget({super.key});

  @override
  State<ReserveBedWidget> createState() => _ReserveBedWidgetState();
}

class _ReserveBedWidgetState extends State<ReserveBedWidget> {
  late ReserveBedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  DatabaseReference ref = FirebaseDatabase.instance.ref('Bedsentry');
  final List<dynamic> _bed = [];

  Future<void> init() async {
    ref.onValue.listen((DatabaseEvent event) {
      List<dynamic> sen1 = [];
      final data = event.snapshot.children;
      _bed.clear();
      for (var entry in data) {
        sen1.add(entry.value);
      }
      setState(() {
        _bed.addAll(sen1);
      });
      if (kDebugMode) {
        print(event.snapshot.value);
        print(_bed);
      }
    });
  }

  Future<void> update(int bedNum, String state) async {
    if (bedNum != 1) {
      await ref.update({
        "Bed$bedNum/State": state,
      });
    } else {
      await ref.update({
        "Bed/State": state,
      });
    }
  }

  @override
  void initState() {
    init();
    super.initState();
    _model = createModel(context, () => ReserveBedModel());
    // On page load action.
    // SchedulerBinding.instance.addPostFrameCallback((_) async {
    //   context.pushNamed('-Dashboard');
    // });
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -2.27),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 410.0,
                          height: 883.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.04, -0.81),
                      child: Text(
                        'Reserve Bed',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Merriweather',
                              color: const Color(0xFF007CAA),
                              fontSize: 37.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 23.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('-Dashboard');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  22.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 44.0,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('-Dashboard');
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.chevron_left,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
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
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.21, 0.53),
                  child: Container(
                    width: 323.0,
                    height: 440.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: _bed.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 21.0, 10.0, 0.0),
                              child: Container(
                                width: 289.0,
                                height: 63.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x87000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.9, -0.07),
                                      child: Text(
                                        'Bed ${_bed[index]['Bed num']}:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                              fontSize: 21.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          0.12, 0.13),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${_bed[index]['State']}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color:
                                                        const Color(0xFF007CAA),
                                                    fontSize: 17.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          0.83, 0.12),
                                      child: InkWell(
                                        onTap: () {
                                          update(
                                              _bed[index]['Bed num'],
                                              _bed[index]['State'] ==
                                                      'available'
                                                  ? 'Occupied'
                                                  : 'available');
                                        },
                                        child: Icon(
                                          Icons.control_point_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 28.0,
                                        ),
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
              alignment: const AlignmentDirectional(0.0, -0.53),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        40.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 289.0,
                      height: 77.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x71000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.9, -0.07),
                            child: Text(
                              'Available Beds:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Merriweather',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.78, -0.03),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '${_bed.where((element) => element['State'] == 'available').length} / ${_bed.length}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF007CAA),
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
