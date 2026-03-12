import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';

class BladderWidget extends StatefulWidget {
  final ReportDraft draft;
  const BladderWidget({super.key, required this.draft});

  @override
  State<BladderWidget> createState() => _BladderWidgetState();
}

class _BladderWidgetState extends State<BladderWidget> {
  @override
  Widget build(BuildContext context) {
    widget.draft.bladder ??= Bladder(
      regularity: Regularity.regular,
      wallMm: 0.0,
      douglasPouch: DouglasPouch.free,
      diagnosis: BladderDiagnosis.normal,
      ovaryDiagnosis: OvaryDiagnosis.normales,
    );
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border(
          top: BorderSide(color: theme.colorScheme.primary, width: 8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: .start,
        children: [
          // Título
          Row(
            children: [
              Icon(Icons.opacity, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                "VEJIGA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 18),

          // Regularidad
          Row(
            children: [Regularity.regular, Regularity.irregular].map((reg) {
              final selected = widget.draft.bladder?.regularity == reg;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SelectedButton(
                    label: reg == Regularity.regular ? "REGULAR" : "IRREGULAR",
                    selected: selected,
                    selectedColor: kCafeVinoOscuro,
                    onTap: () {
                      setState(() => widget.draft.bladder?.regularity = reg);
                    },
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 18),

          // Pared
          ThemedTextInput(
            value: widget.draft.bladder?.wallMm?.toString() ?? "",
            labelText: "PARED (MM)",
            keyboardType: TextInputType.number,
            onChanged: (value) {
              widget.draft.bladder?.wallMm = double.tryParse(value);
              setState(() {});
            },
          ),
          const SizedBox(height: 18),

          // Fondo de saco Douglas
          Text(
            "FONDO DE SACO DOUGLAS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary.withValues(alpha: 0.7),
              fontSize: 13,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 12),
          Row(
            children: [DouglasPouch.free, DouglasPouch.occupied].map((pouch) {
              final selected = widget.draft.bladder?.douglasPouch == pouch;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SelectedButton(
                    label: pouch == DouglasPouch.free ? "LIBRE" : "OCUPADO",
                    selected: selected,
                    selectedColor: kCafeVinoOscuro,
                    onTap: () {
                      setState(
                        () => widget.draft.bladder?.douglasPouch = pouch,
                      );
                    },
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 28),

          // SUGESTIVO DE
          Row(
            children: [
              Icon(
                Icons.assignment,
                color: theme.colorScheme.primary.withValues(alpha: 0.7),
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                "SUGESTIVO DE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary.withValues(alpha: 0.7),
                  fontSize: 13,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 16),

          // Diagnóstico útero y ovarios
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Diagnóstico útero
                Text(
                  "DIAGNÓSTICO ÚTERO",
                  style: TextStyle(
                    color: theme.colorScheme.primary.withValues(alpha: 0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 6),
                DropdownButtonFormField<BladderDiagnosis>(
                  value: widget.draft.bladder?.diagnosis,
                  items: BladderDiagnosis.values
                      .map(
                        (d) => DropdownMenuItem(
                          value: d,
                          child: Text(d.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => setState(() {
                    widget.draft.bladder?.diagnosis = value;
                  }),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Color(0xFFF8F9FB),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Diagnóstico ovarios
                Text(
                  "DIAGNÓSTICO OVARIOS",
                  style: TextStyle(
                    color: theme.colorScheme.primary.withValues(alpha: 0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: OvaryDiagnosis.values.map((diag) {
                    final selected =
                        widget.draft.bladder?.ovaryDiagnosis == diag;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: SelectedButton(
                          label: diag.name.toUpperCase(),
                          selected: selected,
                          selectedColor: kCafeVinoOscuro,
                          onTap: () {
                            setState(
                              () => widget.draft.bladder?.ovaryDiagnosis = diag,
                            );
                          },
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // Conclusión final
          ThemedTextInput(
            value: widget.draft.bladder?.conclusion ?? "",
            labelText: "Escriba aquí la conclusión final del reporte médico...",
            maxLines: 4,
            onChanged: (value) {
              setState(() => widget.draft.bladder?.conclusion = value);
            },
          ),
          const SizedBox(height: 18),

          // Botón procesar reporte
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB97C85),
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
              onPressed: () {
                print(widget.draft.toJson());
              },
              child: const Text(
                "PROCESAR REPORTE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
