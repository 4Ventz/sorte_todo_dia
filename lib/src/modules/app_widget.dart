import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sorte_todo_dia/src/modules/buiness_edit_profile/business_edit_profile_page.dart';
import 'package:sorte_todo_dia/src/modules/business_config/business_config_page.dart';
import 'package:sorte_todo_dia/src/modules/business_login/business_login.dart';
import 'package:sorte_todo_dia/src/modules/business_raffles/business_raffles_page.dart';
import 'package:sorte_todo_dia/src/modules/business_sing_up/business_sing_up_page.dart';
import 'package:sorte_todo_dia/src/modules/config/config_page.dart';
import 'package:sorte_todo_dia/src/modules/edit_profile/edit_profile_page.dart';
import 'package:sorte_todo_dia/src/modules/home/home_page.dart';
import 'package:sorte_todo_dia/src/modules/loading/loading_page.dart';
import 'package:sorte_todo_dia/src/modules/login/login_page.dart';
import 'package:sorte_todo_dia/src/modules/my_raffles/my_raffles_page.dart';
import 'package:sorte_todo_dia/src/modules/prizes/prizes_page.dart';
import 'package:sorte_todo_dia/src/modules/prizes_details/prizes_details_page.dart';
import 'package:sorte_todo_dia/src/modules/raffles/raffles_page.dart';
import 'package:sorte_todo_dia/src/modules/sign_up/sign_up_page.dart';
import 'package:sorte_todo_dia/src/shared/theme/app_theme.dart';

import 'business_home/business_home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorte Todo Dia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: '/login',
      routes: {
        '/': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
        '/sing_up': (context) => const SingUpPage(),
        '/home': (context) => const HomePage(),
        '/raffles': (context) => const RafflePage(),
        '/config': (context) => const ConfigPage(),
        '/my-raffles': (context) => const MyRafflesPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/prizes': (context) => const PrizesPage(),
        '/prizes-details': (context) => const PrizesDetailsPage(),
        '/business-login': (context) => const BusinessLoginPage(),
        '/business-sing-up': (context) => const BusinessSingUpPage(),
        '/business-home': (context) => const BusinessHomePage(),
        '/business-config': (context) => const BusinessConfigPage(),
        '/business-edit-profile': (context) => const BusinessEditProfilePage(),
        '/business-raffles': (context) => const BusinessRafflesPage(),
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
