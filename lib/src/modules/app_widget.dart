import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sorte_todo_dia/src/modules/loading/loading_page.dart';
import 'package:sorte_todo_dia/src/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorte Todo Dia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingPage(),
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
