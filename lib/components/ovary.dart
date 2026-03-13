import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';

class OvaryWidget extends StatefulWidget {
  final String titulo;
  final Ovary ovary;
  final void Function(Ovary value) onChanged;
  const OvaryWidget({
    super.key,
    required this.titulo,
    required this.ovary,
    required this.onChanged,
  });

  @override
  State<OvaryWidget> createState() => _OvaryWidgetState();
}

class _OvaryWidgetState extends State<OvaryWidget> {
  late Ovary ovary;

  @override
  void initState() {
    super.initState();
    ovary = widget.ovary;
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
            children: OvaryType.values.map((type) {
              return Expanded(
                child: SelectedButton(
                  label: type.name.toUpperCase(),
                  selected: widget.ovary.type == type,
                  selectedColor: kCafeVinoOscuro,
                  onTap: () {
                    setState(() {
                      ovary.type = type;
                      widget.onChanged(ovary);
                    });
                  },
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
                  value: widget.ovary.measures.ap.toString(),
                  labelText: "AP",
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      final numVal = double.tryParse(value);
                      if (numVal == null) return;

                      ovary.measures.ap = numVal;
                      widget.onChanged(ovary);
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.ovary.measures.tr.toString(),

                  labelText: "TR",
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      final numVal = double.tryParse(value);
                      if (numVal == null) return;
                      widget.ovary.measures.tr = numVal;
                      widget.onChanged(widget.ovary);
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.ovary.measures.lo.toString(),
                  labelText: "LO",
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      final numVal = double.tryParse(value);
                      if (numVal == null) return;
                      widget.ovary.measures.lo = numVal;
                      widget.onChanged(widget.ovary);
                    });
                  },
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
                      widget.ovary.measures.volume.toStringAsFixed(0),
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
            value: widget.ovary.notes ?? "",
            labelText: "Hallazgos adicionales en este ovario...",
            maxLines: 2,
            onChanged: (value) {
              setState(() {
                widget.ovary.notes = value;
                widget.onChanged(widget.ovary);
              });
            },
          ),
        ],
      ),
    );
  }
}
