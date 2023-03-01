import 'package:bloody/bloc/question_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bloody/config/routes/app_route_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //blockai
    //Multibloc Provider
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionCubit>(
          create: (context) => QuestionCubit()..Quess,
        )
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
