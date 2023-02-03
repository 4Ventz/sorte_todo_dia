import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sorte_todo_dia/src/modules/config/config.dart';
import 'package:sorte_todo_dia/src/modules/home/home_page.dart';
import 'package:sorte_todo_dia/src/modules/loading/loading_page.dart';
import 'package:sorte_todo_dia/src/modules/login/login_page.dart';
import 'package:sorte_todo_dia/src/modules/myRaffles/myRaffles.dart';
import 'package:sorte_todo_dia/src/modules/raffle/raffle.dart';
import 'package:sorte_todo_dia/src/modules/singup/singUP_page.dart';
import 'package:sorte_todo_dia/src/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorte Todo Dia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: '/myRaffles',
      routes: {
        '/': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
        '/singup': (context) => const SingUpPage(),
        '/home': (context) => const HomePage(),
        '/raffle': (context) => const RafflePage(),
        '/config': (context) => const ConfigPage(),
        '/myRaffles': (context) => const MyRafflesPage(),
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale(
          'pt',
          'BR',
        ),
      ],
    );
  }
}
