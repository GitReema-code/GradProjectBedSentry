import 'package:bedsentry/custom_code/notification_response.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;
  final box = GetStorage();
  List<NotificationListResponse> _notificationList = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  getnotificationList() async {
    try {
      List<dynamic>? data = await box.read('notificationList');
      if (data != null) {
        _notificationList = [
          ...data.map((e) => notificationListResponseFromJson(e))
        ];
      }
      setState(() {
        if (data != null) {
          _notificationList = [
            ...data.map((e) => notificationListResponseFromJson(e))
          ];
        }
      });
      print(_notificationList);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getnotificationList();
    _model = createModel(context, () => NotificationsModel());
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/back.png',
                width: 410.0,
                height: 883.0,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.65),
              child: Text(
                'Notifications',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Merriweather',
                      color: Color(0xFF007CAA),
                      fontSize: 37.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 220.0, 0.0, 66.0),
              child: ListView.builder(
                itemCount: _notificationList.length,
                padding: const EdgeInsets.fromLTRB(
                  0,
                  4.0,
                  0,
                  44.0,
                ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 0.0, 20.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: const Color(0xFFE5E7EB),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 32.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                                // color: const Color(0x4D9489F5),
                                // shape: BoxShape.circle,
                                // border: Border.all(
                                //   color: const Color(0xFF007CAA),
                                //   width: 2.0,
                                // ),
                                image: DecorationImage(
                              image: NetworkImage(_notificationList[index]
                                      .imageUrl ??
                                  'https://firebasestorage.googleapis.com/v0/b/bedsentry-6c705.appspot.com/o/bell.png?alt=media&token=23a56793-d96c-489e-9dcb-fcb7cea505a4'),
                              fit: BoxFit.cover,
                            )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 4.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${_notificationList[index].title} ',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Merriweather',
                                          color: const Color(0xFF15161E),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      '${_notificationList[index].body} ',
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Merriweather',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsetsDirectional.fromSTEB(
                                  //       0.0, 8.0, 0.0, 4.0),
                                  //   child: Text(
                                  //     '2 hours ago',
                                  //     style: FlutterFlowTheme.of(context)
                                  //         .labelSmall
                                  //         .override(
                                  //           fontFamily: 'Merriweather',
                                  //           color: const Color(0xFF606A85),
                                  //           fontSize: 12.0,
                                  //           letterSpacing: 0.0,
                                  //           fontWeight: FontWeight.w500,
                                  //         ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.02),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
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
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 55.0,
                                  icon: Icon(
                                    Icons.home_outlined,
                                    color: Color(0x6414181B),
                                    size: 37.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('-Dashboard');
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.43, -0.74),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 4.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 44.0,
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      color: Color(0x6E14181B),
                                      size: 37.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('-Notifications');
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 46.0,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 0.0, 10.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.perm_identity,
                                    color: Color(0x6E14181B),
                                    size: 37.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('-Account-Setting');
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
          ],
        ),
      ),
    );
  }
}
