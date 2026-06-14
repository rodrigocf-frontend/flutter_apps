import 'package:finance_app/screens/login.dart';
import 'package:finance_app/app_tabs/app_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale("pt"),
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color(0xFF6C5FD4)),
      ),
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => AppTabs(),
      },
    );
  }
}
