import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';

class NodulesContent extends StatefulWidget {
  const NodulesContent({super.key});

  @override
  State<NodulesContent> createState() => _NodulesContentState();
}

class _NodulesContentState extends State<NodulesContent> {
  // Estado de los selectores
  bool tieneNodulos = true;
  String ubicacion = "PARED ANTERIOR";
  final ubicaciones = [
    "FONDO",
    "PARED ANTERIOR",
    "PARED POSTERIOR",
    "LATERAL",
    "OTROS",
  ];

  // Campos de entrada como String
  String lValue = "";
  String apValue = "";
  String tValue = "";
  String detallesValue = "";

  double calcularVolumen() {
    // Volumen = L * AP * T * 0.523
    final l = double.tryParse(lValue) ?? 0;
    final ap = double.tryParse(apValue) ?? 0;
    final t = double.tryParse(tValue) ?? 0;
    return l * ap * t * 0.523;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ubicación del hallazgo
        Text(
          "UBICACIÓN DEL HALLAZGO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: theme.colorScheme.primary.withValues(alpha: 0.7),
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            spacing: 8,
            children: ubicaciones.map((u) {
              final selected = ubicacion == u;
              return Expanded(
                child: SelectedButton(
                  label: u,
                  selected: selected,
                  selectedColor: kCafeVinoOscuro,
                  onTap: () => setState(() => ubicacion = u),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 18),

        // Campos de medidas y volumen
        Row(
          children: [
            Expanded(
              child: ThemedTextInput(
                value: lValue,
                labelText: "L (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) => setState(() => lValue = value),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ThemedTextInput(
                value: apValue,
                labelText: "AP (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) => setState(() => apValue = value),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ThemedTextInput(
                value: tValue,
                labelText: "T (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) => setState(() => tValue = value),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.brown[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "VOL",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "${calcularVolumen().toStringAsFixed(0)} cc",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),

        // Detalles del nódulo
        ThemedTextInput(
          value: detallesValue,
          labelText: "Detalles del nódulo (Máximo 2 líneas descriptivas)...",
          maxLines: 2,
          onChanged: (value) => setState(() => detallesValue = value),
        ),
      ],
    );
  }
}
