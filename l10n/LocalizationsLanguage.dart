import 'package:flutter/material.dart';

class LocalizationsLanguage{
  LocalizationsLanguage(this.locale);

  final Locale locale;

  static LocalizationsLanguage of(BuildContext context) {
    return Localizations.of<LocalizationsLanguage>(context, LocalizationsLanguage);
  }
}