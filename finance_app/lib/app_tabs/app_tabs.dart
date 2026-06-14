import 'package:finance_app/app_tabs/tabs/add.dart';
import 'package:finance_app/app_tabs/tabs/charts.dart';
import 'package:finance_app/app_tabs/tabs/home.dart';
import 'package:finance_app/app_tabs/tabs/profile.dart';
import 'package:finance_app/app_tabs/tabs/transactions.dart';
import 'package:finance_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class AppTabs extends StatefulWidget {
  const AppTabs({super.key});

  @override
  State<AppTabs> createState() => _AppTabsState();
}

class _AppTabsState extends State<AppTabs> {
  int _currentTabIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    TransactionsTab(),
    AddTab(),
    ChartsTab(),
    ProfileTab(),
  ];

  void _onTap(int value) {
    setState(() {
      _currentTabIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final translation = AppLocalizations.of(context)!;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        currentIndex: _currentTabIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: translation.tabHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: translation.tabTransactions,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: translation.tabAdd,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: translation.tabCharts,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: translation.tabProfile,
          ),
        ],
      ),
      body: _tabs[_currentTabIndex],
    );
  }
}
