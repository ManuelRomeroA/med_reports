import 'package:flutter/material.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';

class UteroWidget extends StatefulWidget {
  final ReportDraft draft;
  const UteroWidget({super.key, required this.draft});

  @override
  State<UteroWidget> createState() => _UteroWidgetState();
}

class _UteroWidgetState extends State<UteroWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: theme.primaryColor.withValues(alpha: 0.13)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título y barra superior
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                'HALLAZGOS UTERINOS',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),

          // Inputs de medidas y volumen
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                // Medidas
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Longitud x AP (mm)",
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ThemedTextInput(
                              labelText: "L",
                              value: widget.draft.uterineFindings?.longitud
                                  ?.toString(),
                              keyboardType: TextInputType.number,
                              onChanged: (v) => setState(
                                () => widget.draft.uterineFindings?.longitud =
                                    double.tryParse(v),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 12,
                            child: Text(
                              'x',
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ThemedTextInput(
                              value: widget.draft.uterineFindings?.ap
                                  ?.toString(),
                              labelText: "AP",
                              keyboardType: TextInputType.number,
                              onChanged: (v) => setState(
                                () => widget.draft.uterineFindings?.ap =
                                    double.tryParse(v),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Transverso : Otros",
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ThemedTextInput(
                              value: widget.draft.uterineFindings?.transverse
                                  ?.toString(),
                              labelText: "T",
                              keyboardType: TextInputType.number,
                              onChanged: (v) => setState(
                                () => widget.draft.uterineFindings?.transverse =
                                    double.tryParse(v),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),

                          /// TODO: ASK this
                          Expanded(
                            child: ThemedTextInput(
                              value: '50',
                              onChanged: (_) {},
                              labelText: "",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                // Volumen uterino
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "VOLUMEN UTERINO",
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: .end,
                        crossAxisAlignment: .end,
                        children: [
                          Text(
                            widget.draft.uterineFindings?.volume?.toString() ??
                                '',
                            style: theme.textTheme.headlineLarge?.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "CC",
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // Localización
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "LOCALIZACIÓN",
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor.withValues(alpha: 0.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,

                        children: UterusLocalization.values
                            .where((loc) => loc != UterusLocalization.unknown)
                            .map((loc) {
                              return SelectedButton(
                                label: loc.toString(),
                                selected:
                                    widget
                                        .draft
                                        .uterineFindings
                                        ?.localization ==
                                    loc,
                                selectedColor:
                                    widget
                                            .draft
                                            .uterineFindings
                                            ?.localization ==
                                        loc
                                    ? kCafeVinoOscuro
                                    : theme.inputDecorationTheme.fillColor ??
                                          const Color(0xFFF8FAFC),
                                onTap: () => setState(
                                  () =>
                                      widget
                                              .draft
                                              .uterineFindings
                                              ?.localization =
                                          loc,
                                ),
                              );
                            })
                            .toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "POSICIÓN",
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor.withValues(alpha: 0.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: UterusPosition.values
                            .where((pos) => pos != UterusPosition.unknown)
                            .map((pos) {
                              return SelectedButton(
                                label: pos.toString(),
                                selected:
                                    widget.draft.uterineFindings?.position ==
                                    pos,
                                selectedColor:
                                    widget.draft.uterineFindings?.position ==
                                        pos
                                    ? kCafeVinoOscuro
                                    : theme.inputDecorationTheme.fillColor ??
                                          const Color(0xFFF8FAFC),
                                onTap: () => setState(
                                  () => widget.draft.uterineFindings?.position =
                                      pos,
                                ),
                              );
                            })
                            .toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SUPERFICIE",
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor.withValues(alpha: 0.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: UterusSurface.values
                            .where((sup) => sup != UterusSurface.unknown)
                            .map((sup) {
                              return SelectedButton(
                                label: sup.toString(),
                                selected:
                                    widget.draft.uterineFindings?.surface ==
                                    sup,
                                selectedColor:
                                    widget.draft.uterineFindings?.surface == sup
                                    ? kCafeVinoOscuro
                                    : theme.inputDecorationTheme.fillColor ??
                                          const Color(0xFFF8FAFC),
                                onTap: () => setState(
                                  () => widget.draft.uterineFindings?.surface =
                                      sup,
                                ),
                              );
                            })
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // Miometrio y Endometrio
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "MIOMETRIO",
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor.withValues(alpha: 0.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: MyometriumType.values
                            .where((mio) => mio != MyometriumType.unknown)
                            .map((mio) {
                              return Expanded(
                                child: SelectedButton(
                                  label: mio.toString(),
                                  selected:
                                      widget
                                          .draft
                                          .uterineFindings
                                          ?.myometrium ==
                                      mio,
                                  selectedColor:
                                      widget
                                              .draft
                                              .uterineFindings
                                              ?.myometrium ==
                                          mio
                                      ? kRosaVieja
                                      : theme.inputDecorationTheme.fillColor ??
                                            const Color(0xFFF8FAFC),
                                  onTap: () => setState(
                                    () =>
                                        widget
                                                .draft
                                                .uterineFindings
                                                ?.myometrium =
                                            mio,
                                  ),
                                ),
                              );
                            })
                            .toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "ENDOMETRIO",
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor.withValues(alpha: 0.7),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: EndometriumAspect.values
                            .where((endo) => endo != EndometriumAspect.unknown)
                            .map((endo) {
                              return Expanded(
                                child: SelectedButton(
                                  label: endo.toString(),
                                  selected:
                                      widget
                                          .draft
                                          .uterineFindings
                                          ?.endometrium ==
                                      endo,
                                  selectedColor:
                                      widget
                                              .draft
                                              .uterineFindings
                                              ?.endometrium ==
                                          endo
                                      ? kRosaVieja
                                      : theme.inputDecorationTheme.fillColor ??
                                            const Color(0xFFF8FAFC),
                                  onTap: () => setState(
                                    () =>
                                        widget
                                                .draft
                                                .uterineFindings
                                                ?.endometrium =
                                            endo,
                                  ),
                                ),
                              );
                            })
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
