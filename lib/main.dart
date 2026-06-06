import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/theme/med_theme.dart';
import 'package:med_reports/views/app_shell.dart';

void main() {
  runApp(const EcoReportApp());
}

class EcoReportApp extends StatelessWidget {
  const EcoReportApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco-Report Pro - Dra. Gisemar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: MedTheme.rosaVieja,
          onPrimary: Colors.white,
          secondary: MedTheme.cafeVinoOscuro,
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
          error: Colors.red.shade700,
          onError: Colors.white,
        ),
        scaffoldBackgroundColor: MedTheme.background,
        fontFamily: 'Inter',
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          filled: true,
          fillColor: const Color(0xFFF8FAFC),
          border: const ThemedInputBorder(),
          labelStyle: TextStyle(color: Colors.grey.shade600),
          suffixIconColor: MedTheme.rosaVieja,
          suffixStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15),
          prefixIconColor: Colors.grey.shade500,
          prefixStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15),
        ),
        iconTheme: const IconThemeData(color: MedTheme.rosaVieja),
        appBarTheme: const AppBarTheme(
          backgroundColor: MedTheme.background,
          foregroundColor: MedTheme.cafeVinoOscuro,
          elevation: 0,
          iconTheme: IconThemeData(color: MedTheme.rosaVieja),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: MedTheme.cafeVinoOscuro),
          bodyMedium: TextStyle(color: MedTheme.cafeVinoOscuro),
          bodySmall: TextStyle(color: MedTheme.cafeVinoOscuro),
          titleLarge: TextStyle(color: MedTheme.rosaVieja),
        ),
      ),
      home: const AppShell(),
    );
  }
}
