import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/models/models.dart';
import 'package:med_reports/components/general/selected_button.dart';

/**
 * Selector de estado (vaginal/cervical) que opera sobre un draft mutable.
 * Recibe draft, onChanged y un campo destino en el draft (campo).
 */
class StateSelector extends StatefulWidget {
  final String titulo;
  final ReportDraft draft;
  final VoidCallback onChanged;
  final String campo; // ej: "vaginalState" o "cervixState"

  const StateSelector({
    super.key,
    required this.titulo,
    required this.draft,
    required this.onChanged,
    required this.campo,
  });

  @override
  State<StateSelector> createState() => _StateSelectorState();
}

class _StateSelectorState extends State<StateSelector> {
  // El estado lo guarda el draft, identificador: widget.campo
  // Para demo: sólo referencia a draft.findings?.uterusDiagnosis como ejemplo

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
              // Demo: ejemplo refactorización draft, borra state local, cambia el campo dinámico (findings.uterusDiagnosis por defecto)
              final value = widget.draft.findings?.uterusDiagnosis ?? "NORMAL";
              final selected = value == op;
              return Expanded(
                child: SelectedButton(
                  label: op,
                  selected: selected,
                  selectedColor: theme.colorScheme.primary,
                  onTap: () => setState(() {
                    if (widget.draft.findings == null)
                      widget.draft.findings = Findings();
                    widget.draft.findings?.uterusDiagnosis = op;
                    widget.onChanged();
                  }),
                ),
              );
            }).toList(),
          ),
          if ((widget.draft.findings?.uterusDiagnosis ?? "") == "OTROS") ...[
            const SizedBox(height: 12),
            ThemedTextInput(
              value: widget.draft.findings?.conclusion ?? "",
              labelText: "Describa hallazgo...",
              onChanged: (value) {
                if (widget.draft.findings == null)
                  widget.draft.findings = Findings();
                widget.draft.findings?.conclusion = value;
                setState(() {});
                widget.onChanged();
              },
            ),
          ],
        ],
      ),
    );
  }
}
