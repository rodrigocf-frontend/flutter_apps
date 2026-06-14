import 'package:finance_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final translation = AppLocalizations.of(context)!;
    final navigation = Navigator.of(context);

    return Scaffold(
      body: Padding(
        padding: .all(45),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .stretch,
          children: [
            Text(
              textAlign: .center,
              style: TextStyle(fontSize: 40, color: scheme.onPrimaryContainer),
              translation.authTitle,
            ),
            Text(textAlign: .center, translation.authSubtitle),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                hintText: translation.formEmail,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: translation.formPassword,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () => navigation.popAndPushNamed("/home"),
              child: Text(translation.commonEnter),
            ),
          ],
        ),
      ),
    );
  }
}
