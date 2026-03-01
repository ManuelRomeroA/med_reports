import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';

class OvaryWidget extends StatefulWidget {
  final String titulo;
  const OvaryWidget({super.key, required this.titulo});

  @override
  State<OvaryWidget> createState() => _OvaryWidgetState();
}

class _OvaryWidgetState extends State<OvaryWidget> {
  // Estado de los selectores
  String tipo = "NORMALES";
  final tipos = ["NORMALES", "POLIQ.", "OTROS"];

  // Campos de entrada como String
  String apValue = "";
  String trValue = "";
  String loValue = "";
  String hallazgosValue = "";

  double calcularVolumen() {
    // Volumen = AP * TR * LO * 0.523
    final ap = double.tryParse(apValue) ?? 0;
    final tr = double.tryParse(trValue) ?? 0;
    final lo = double.tryParse(loValue) ?? 0;
    return ap * tr * lo * 0.523;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.07),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Título y línea
          Text(
            widget.titulo.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
              fontSize: 15,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 2),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 12),

          // Selector de tipo
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: .max,
            children: tipos.map((t) {
              final selected = tipo == t;
              return Expanded(
                child: SelectedButton(
                  label: t,
                  selected: selected,
                  selectedColor: kCafeVinoOscuro,
                  onTap: () => setState(() => tipo = t),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 18),

          // Campos de medidas y volumen
          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  value: apValue,
                  labelText: "AP",
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => apValue = value),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: trValue,
                  labelText: "TR",
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => trValue = value),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: loValue,
                  labelText: "LO",
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => loValue = value),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
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
                      calcularVolumen().toStringAsFixed(0),
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

          // Hallazgos adicionales
          ThemedTextInput(
            value: hallazgosValue,
            labelText: "Hallazgos adicionales en este ovario...",
            maxLines: 2,
            onChanged: (value) => setState(() => hallazgosValue = value),
          ),
        ],
      ),
    );
  }
}
