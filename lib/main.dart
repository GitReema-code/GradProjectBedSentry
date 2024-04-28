import 'dart:io';
import 'package:bedsentry/custom_code/notification_response.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_storage/get_storage.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';

Future<void> handelBackgroundMessage(RemoteMessage message) async {
  if (kDebugMode) {
    print(message.notification!.title);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();
  await GetStorage.init();
  await FlutterFlowTheme.initialize();
  FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  late Stream<BaseAuthUser> userStream;
  var android = const AndroidNotificationDetails(
    'yusr_app_channel',
    'yusr_app_channel',
    channelDescription: 'channel description',
    importance: Importance.max,
    priority: Priority.high,
    ticker: 'ticker',
    icon: '@mipmap/ic_launcher',
  );
  FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  final box = GetStorage();
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  _firebaseInit() async {
    await _fcm.getToken().then((value) async => {
          await ref.update({
            "fcmtoken": value,
          })
        });
    // var settings = await _fcm.requestPermission(
    //alert: true,
    //announcement: false,
    //badge: true,
    //carPlay: false,
    //criticalAlert: false,
    //provisional: false,
    //sound: true,
    //);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      var notificationList = box.read('notificationList');
      NotificationListResponse notificationListResponse =
          NotificationListResponse(
              body: message.notification!.body!,
              title: message.notification!.title!,
              imageUrl: message.notification!.android!.imageUrl);
      if (notificationList == null) {
        box.write('notificationList',
            [notificationListResponseToJson(notificationListResponse)]);
      } else {
        dynamic oldnotificationList = notificationList;
        oldnotificationList
            .add(notificationListResponseToJson(notificationListResponse));
        box.write('notificationList', oldnotificationList);
      }
      print(message.notification!.android!.imageUrl);
      if (Platform.isAndroid) {
        var platform = NotificationDetails(android: android);
        notificationsPlugin.show(1, message.notification?.title,
            message.notification?.body, platform);
      }
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _firebaseInit();
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = bedsentryFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bedsentry',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
