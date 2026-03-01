import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'views/home.dart';

const Color kRosaVieja = Color(0xFFb57a84);
const Color kCafeVinoOscuro = Color(0xFF4a3a3d);

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
          primary: kRosaVieja,
          onPrimary: Colors.white,
          secondary: kCafeVinoOscuro,
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
          error: Colors.red.shade700,
          onError: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFf8f1f2),
        fontFamily: 'Inter',
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          filled: true,
          fillColor: const Color(0xFFF8FAFC),
          border: const ThemedInputBorder(),
          labelStyle: TextStyle(color: Colors.grey.shade600),
          suffixIconColor: kRosaVieja,
          suffixStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15),
          prefixIconColor: Colors.grey.shade500,
          prefixStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15),
        ),
        iconTheme: const IconThemeData(color: kRosaVieja),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFf8f1f2),
          foregroundColor: kCafeVinoOscuro,
          elevation: 0,
          iconTheme: IconThemeData(color: kRosaVieja),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kCafeVinoOscuro),
          bodyMedium: TextStyle(color: kCafeVinoOscuro),
          bodySmall: TextStyle(color: kCafeVinoOscuro),
          titleLarge: TextStyle(color: kRosaVieja),
        ),
      ),
      home: const HomeView(),
    );
  }
}
