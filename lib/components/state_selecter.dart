import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';

class StateSelector extends StatefulWidget {
  final String titulo;

  const StateSelector({super.key, required this.titulo});

  @override
  State<StateSelector> createState() => _StateSelectorState();
}

class _StateSelectorState extends State<StateSelector> {
  String seleccion = "NORMAL";
  String detalle = "";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(20),
      height: 210,

      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              widget.titulo,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: ["NORMAL", "OTROS"].map((op) {
              final selected = seleccion == op;
              return Expanded(
                child: SelectedButton(
                  label: op,
                  selected: selected,
                  selectedColor: theme.colorScheme.primary,
                  onTap: () => setState(() {
                    seleccion = op;
                    if (op != "OTROS") detalle = "";
                  }),
                ),
              );
            }).toList(),
          ),
          if (seleccion == "OTROS") ...[
            const SizedBox(height: 12),
            ThemedTextInput(
              value: detalle,
              labelText: "Describa hallazgo...",
              onChanged: (value) => setState(() => detalle = value),
            ),
          ],
        ],
      ),
    );
  }
}
