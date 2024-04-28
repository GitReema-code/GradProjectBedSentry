import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'timer_widget.dart' show TimerWidget;
import 'package:flutter/material.dart';


class TimerModel extends FlutterFlowModel<TimerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  int timerMilliseconds1 = 240000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    240000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds2 = 200099;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    200099,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds3 = 200000;
  String timerValue3 = StopWatchTimer.getDisplayTime(
    200000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController3 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds4 = 121011;
  String timerValue4 = StopWatchTimer.getDisplayTime(
    121011,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController4 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds5 = 90000;
  String timerValue5 = StopWatchTimer.getDisplayTime(
    90000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController5 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds6 = 80111;
  String timerValue6 = StopWatchTimer.getDisplayTime(
    80111,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController6 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds7 = 70101;
  String timerValue7 = StopWatchTimer.getDisplayTime(
    70101,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController7 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds8 = 62222;
  String timerValue8 = StopWatchTimer.getDisplayTime(
    62222,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController8 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  int timerMilliseconds9 = 30000;
  String timerValue9 = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController9 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController1.dispose();
    timerController2.dispose();
    timerController3.dispose();
    timerController4.dispose();
    timerController5.dispose();
    timerController6.dispose();
    timerController7.dispose();
    timerController8.dispose();
    timerController9.dispose();
  }
}
