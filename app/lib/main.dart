import 'package:bloody/blocs/bloc_register/question_cubit.dart';
import 'package:bloody/repository/api_repo.dart';
import 'package:bloody/screens/home.dart';
import 'package:bloody/services/api_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    apiService: ApiService(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.apiService}) : super(key: key);
  final ApiService apiService;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionCubit>(
          create: (BuildContext context) => QuestionCubit(
              apiRepository: ApiRepository(
            apiService: apiService,
          )..getQuestions()),
        ),
        // add more blocs as needed
      ],
      child: MaterialApp(
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
        home: const Home(),
        // routeInformationParser: NyAppRouter().router.routeInformationParser,
        // routerDelegate: NyAppRouter().router.routerDelegate,
      ),
    );
  }
}
