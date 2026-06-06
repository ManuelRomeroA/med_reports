import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/shared/selected_button.dart';
import 'package:med_reports/theme/med_theme.dart';
import 'package:med_reports/models/models.dart';

class NodulesContent extends StatefulWidget {
  final ReportDraft draft;
  const NodulesContent({super.key, required this.draft});

  @override
  State<NodulesContent> createState() => _NodulesContentState();
}

class _NodulesContentState extends State<NodulesContent> {
  final ubicaciones = [
    "FONDO",
    "PARED ANTERIOR",
    "PARED POSTERIOR",
    "LATERAL",
    "OTROS",
  ];

  @override
  void initState() {
    super.initState();
    ensureDetailExists();
  }

  void ensureDetailExists() {
    if (widget.draft.nodules?.detail == null) {
      widget.draft.nodules?.detail = NoduleDetail();
    }
  }

  double calcularVolumen(double? l, double? ap, double? t) {
    // Volumen = L * AP * T * 0.523
    final lVal = l ?? 0;
    final apVal = ap ?? 0;
    final tVal = t ?? 0;
    return lVal * apVal * tVal * 0.523;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final detail = widget.draft.nodules?.detail;

    if (detail == null) {
      return const SizedBox.shrink();
    }

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
            children: [
              for (final loc in NoduleLocation.values)
                if (loc != NoduleLocation.unknown)
                  Expanded(
                    child: SelectedButton(
                      label: loc.toString(),
                      selected: detail.location == loc,
                      selectedColor: MedTheme.cafeVinoOscuro,
                      onTap: () {
                        detail.location = loc;
                        setState(() {});
                      },
                    ),
                  ),
            ],
          ),
        ),
        const SizedBox(height: 18),

        // Campos de medidas y volumen
        Row(
          children: [
            Expanded(
              child: ThemedTextInput(
                value: detail.longitud.toString(),
                labelText: "L (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  detail.longitud = double.tryParse(value) ?? 0;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ThemedTextInput(
                value: detail.ap.toString(),
                labelText: "AP (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  detail.ap = double.tryParse(value) ?? 0;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ThemedTextInput(
                value: detail.t.toString(),
                labelText: "T (mm)",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  detail.t = double.tryParse(value) ?? 0;
                  setState(() {});
                },
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
                    "${calcularVolumen(detail.longitud, detail.ap, detail.t).toStringAsFixed(0)} cc",
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
          value: detail.description ?? "",
          labelText: "Detalles del nódulo (Máximo 2 líneas descriptivas)...",
          maxLines: 2,
          onChanged: (value) {
            detail.description = value;
            setState(() {});
          },
        ),
      ],
    );
  }
}
