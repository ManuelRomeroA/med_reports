import 'package:flutter/material.dart';

/// [MedTheme] provides centralized styling constants for the med_reports application.
/// Colors follow the rosa vieja / café vino palette defined in the design system.
/// PDF palette members map to PdfColor via PdfColor.fromInt in PDF builders.
class MedTheme {
  // — UI Colors —

  /// Primary brand color: Rosa Vieja (dusty rose).
  static const Color rosaVieja = Color(0xFF8B5A63);

  /// Secondary brand color: Café Vino Oscuro (deep wine brown).
  static const Color cafeVinoOscuro = Color(0xFF4a3a3d);

  /// App scaffold background: soft cool gray. Matches the design system's
  /// page background (#F4F5F7), giving white cards a clean floating contrast.
  static const Color background = Color(0xFFF4F5F7);

  // — PDF Palette —

  /// PDF section header background: Vino (same hue as rosaVieja, PDF context).
  static const Color vino = Color(0xFF8B5A63);

  /// PDF light background tint: Vino Claro (very light rose).
  static const Color vinoClaro = Color(0xFFF5ECED);

  /// PDF body text color: Gris Texto (dark gray, readable on white).
  static const Color grisTexto = Color(0xFF333333);

  /// PDF alternating row background: Gris Claro (near-white gray).
  static const Color grisClaro = Color(0xFFF8F8F8);

  // — Text Styles —

  /// Large heading style for section titles (18px, bold, cafeVinoOscuro).
  static TextStyle heading = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    color: cafeVinoOscuro,
    letterSpacing: 0.5,
  );

  /// Section label style (13px, semi-bold, rosaVieja).
  static TextStyle label = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: rosaVieja,
    letterSpacing: 0.4,
  );

  /// Body text style (14px, regular, cafeVinoOscuro).
  static TextStyle body = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: cafeVinoOscuro,
    height: 1.5,
  );
}
