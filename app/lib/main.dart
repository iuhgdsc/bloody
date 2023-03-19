import 'package:bloody/blocs/bloc_emergency/emergency_cubit.dart';
import 'package:bloody/blocs/bloc_event/event_cubit.dart';
import 'package:bloody/blocs/bloc_event_of_user/event_of_user_cubit.dart';
import 'package:bloody/blocs/bloc_login/login_cubit.dart';
import 'package:bloody/blocs/bloc_message/message_cubit.dart';
import 'package:bloody/blocs/bloc_question/question_cubit.dart';
import 'package:bloody/config/routes/app_route_config.dart';
import 'package:bloody/firebase_options.dart';
import 'package:bloody/model/message.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:bloody/services/api_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp(
    apiService: ApiService(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.apiService}) : super(key: key);
  final ApiService apiService;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      setState(() {
        _messageTitle = message.notification!.title ?? '';
        _messageBody = message.notification!.body ?? '';
        messages.add(Message(
          title: _messageTitle,
          body: _messageBody,
        ));
      });
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance.getToken().then((String? token) {
      assert(token != null);
    });
  }

  String _messageTitle = '';
  String _messageBody = '';
  late List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        BlocProvider<QuestionCubit>(
          create: (BuildContext context) => QuestionCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        BlocProvider<EventCubit>(
          create: (BuildContext context) => EventCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        BlocProvider<EmergencyCubit>(
          create: (BuildContext context) => EmergencyCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        BlocProvider<EventOfUserCubit>(
          create: (BuildContext context) => EventOfUserCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        BlocProvider<MessageCubit>(
          create: (BuildContext context) => MessageCubit(
              apiRepository: ApiRepository(
            apiService: widget.apiService,
          )),
        ),
        // add more blocs as needed
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 255, 255, 255),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            secondary: Color.fromARGB(255, 255, 255, 255),
            onSecondary: Color.fromARGB(255, 255, 255, 255),
            background: Color.fromARGB(255, 255, 255, 255),
            onBackground: Color.fromARGB(255, 255, 255, 255),
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
        ),
        routeInformationParser: NyAppRouter().router.routeInformationParser,
        routerDelegate: NyAppRouter().router.routerDelegate,
      ),
    );
  }
}
