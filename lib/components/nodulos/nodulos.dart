import 'package:flutter/material.dart';
import 'package:med_reports/components/nodulos/content.dart';
import 'package:med_reports/models/models.dart';
import 'package:med_reports/main.dart';

/**
 * Widget para editar hallazgos miometriales (nódulos) en el borrador draft mutable.
 * Recibe el draft y un callback [onChanged] que se llama luego de cualquier modificación.
 * Edita el draft directamente y notifica a home.
 */
class NodulesWidget extends StatefulWidget {
  final ReportDraft draft;
  final VoidCallback onChanged;
  const NodulesWidget({
    super.key,
    required this.draft,
    required this.onChanged,
  });

  @override
  State<NodulesWidget> createState() => _NodulesWidgetState();
}

class _NodulesWidgetState extends State<NodulesWidget> {
  // El estado se toma/modifica directamente del draft recibido.

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.13),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.flash_on, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'HALLAZGOS EN MIOMETRIO (NÓDULOS)',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ),
              ),
              _NodulesSelector(
                // Ejemplo de integración: reemplaza 'seleccion' con draft.findings?.uterusDiagnosis u otro campo propio
                value: widget.draft.findings?.uterusDiagnosis ?? "",
                onChanged: (v) {
                  if (widget.draft.findings == null)
                    widget.draft.findings = new Findings();
                  widget.draft.findings?.uterusDiagnosis = v;
                  setState(() {});
                  widget.onChanged();
                },
              ),
            ],
          ),

          Divider(
            thickness: 1,
            color: theme.colorScheme.primary.withValues(alpha: 0.15),
          ),
          // Si quieres mostrar condiciones dependientes del draft, consulta draft directamente.
          if ((widget.draft.findings?.uterusDiagnosis ?? "") == "No") ...[
            const SizedBox(height: 18),
            NodulesContent(),
          ],
        ],
      ),
    );
  }
}

class _NodulesSelector extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const _NodulesSelector({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fillColor =
        theme.inputDecorationTheme.fillColor ?? const Color(0xFFF8FAFC);

    return Container(
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _NoduleOption(
            label: "Si",
            selected: value == "Si",
            onTap: () => onChanged("Si"),
          ),
          _NoduleOption(
            label: "No",
            selected: value == "No",
            onTap: () => onChanged("No"),
          ),
        ],
      ),
    );
  }
}

class _NoduleOption extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NoduleOption({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: selected
              ? Border.all(color: kCafeVinoOscuro, width: 2)
              : null,
        ),
        child: Text(
          label == "Si" ? "SIN NÓDULOS" : "CON NÓDULOS",
          style: TextStyle(color: kCafeVinoOscuro, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
