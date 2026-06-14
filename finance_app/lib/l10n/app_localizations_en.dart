// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authTitle => 'Finance';

  @override
  String get authSubtitle => 'control your finance';

  @override
  String get formEmail => 'Email';

  @override
  String get formPassword => 'Password';

  @override
  String get commonEnter => 'Login';
}
