import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';

class OvaryWidget extends StatefulWidget {
  final String titulo;
  final Ovary ovary;
  const OvaryWidget({super.key, required this.titulo, required this.ovary});

  @override
  State<OvaryWidget> createState() => _OvaryWidgetState();
}

class _OvaryWidgetState extends State<OvaryWidget> {
  late Ovary ovary;

  @override
  void initState() {
    super.initState();
    ovary = widget.ovary;
    _updateVolume();
  }

  @override
  void didUpdateWidget(OvaryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.ovary != widget.ovary) {
      ovary = widget.ovary;
      _updateVolume();
    }
  }

  void _updateVolume() {
    widget.ovary.measures.volume = calculateVolume(
      widget.ovary.measures.ap,
      widget.ovary.measures.tr,
      widget.ovary.measures.lo,
    );
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
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
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
            children: OvaryType.values
                .where((type) => type != OvaryType.unknown)
                .map((type) {
                  return Expanded(
                    child: SelectedButton(
                      label: type.toString(),
                      selected: widget.ovary.type == type,
                      selectedColor: kCafeVinoOscuro,
                      onTap: () {
                        widget.ovary.type = type;

                        setState(() {});
                      },
                    ),
                  );
                })
                .toList(),
          ),
          const SizedBox(height: 18),

          // Campos de medidas y volumen
          Row(
            children: [
              Expanded(
                child: ThemedNumberInput(
                  value: widget.ovary.measures.ap,
                  labelText: "AP",
                  keyboardType: TextInputType.number,
                  hidePrefixSuffixActions: true,
                  onChanged: (value) {
                    if (value == null) return;
                    widget.ovary.measures.ap = value.toDouble();
                    _updateVolume();
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedNumberInput(
                  value: widget.ovary.measures.tr,
                  labelText: "TR",
                  keyboardType: TextInputType.number,
                  hidePrefixSuffixActions: true,
                  onChanged: (value) {
                    if (value == null) return;
                    widget.ovary.measures.tr = value.toDouble();
                    _updateVolume();
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedNumberInput(
                  value: widget.ovary.measures.lo,
                  labelText: "LO",
                  keyboardType: TextInputType.number,
                  hidePrefixSuffixActions: true,
                  onChanged: (value) {
                    if (value == null) return;
                    widget.ovary.measures.lo = value.toDouble();
                    _updateVolume();
                    setState(() {});
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
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      widget.ovary.measures.volume != null
                          ? widget.ovary.measures.volume!.toStringAsFixed(1)
                          : "0",
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
            labelText: "Hallazgos adicionales en este ovario",
            maxLines: 2,
            onChanged: (value) {
              widget.ovary.notes = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  double calculateVolume(double? ap, double? tr, double? lo) {
    // Fórmula para calcular el volumen del ovario: (AP x TR x LO) / 2
    if (ap == null || tr == null || lo == null) {
      return 0;
    }
    return (ap * tr * lo) / 2;
  }
}
