import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vegan_food/screens/login/welcome.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
        const Locale('en', 'US'),
      ],
      locale: Locale('pt'),
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Welcome(),
    ));
