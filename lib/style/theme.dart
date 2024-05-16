import 'package:flutter/material.dart';

final customTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo
    ),
    textTheme: TextTheme(
        bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
    ),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.indigo,
    )
);