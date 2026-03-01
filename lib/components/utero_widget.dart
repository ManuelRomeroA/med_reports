import 'package:flutter/material.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/main.dart';

class UteroWidget extends StatefulWidget {
  const UteroWidget({super.key});

  @override
  State<UteroWidget> createState() => _UteroWidgetState();
}

class _UteroWidgetState extends State<UteroWidget> {
  // Valores de los inputs
  String longitud = '';
  String ap = '';
  String transverso = '';
  String volumen = '0';

  // Selecciones
  String localizacion = 'CENTRAL';
  String posicion = 'AVF';
  String superficie = 'REGULAR';
  String miometrio = 'HOMOGENEO';
  String endometrio = 'PROLI';

  final localizaciones = ['CENTRAL', 'DERECHA', 'IZQUIERDA'];
  final posiciones = ['AVF', 'RVF'];
  final superficies = ['REGULAR', 'IRREGULAR'];
  final miometrios = ['HOMOGENEO', 'HETEROGENIO'];
  final endometrios = ['MENST', 'PROLI', 'SECRE', 'ATROF'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.13),
        ),
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
              child: const Text(
                'HALLAZGOS UTERINOS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 16,
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
                      const Text(
                        "Longitud x AP (mm)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ThemedTextInput(
                              value: longitud,
                              onChanged: (v) => setState(() => longitud = v),
                              labelText: "L",
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'x',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ThemedTextInput(
                              value: ap,
                              onChanged: (v) => setState(() => ap = v),
                              labelText: "AP",
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Transverso : Otros",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ThemedTextInput(
                              value: transverso,
                              onChanged: (v) => setState(() => transverso = v),
                              labelText: "T",
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(width: 8),
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
                      const Text(
                        "VOLUMEN UTERINO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
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
                            volumen,
                            style: TextStyle(
                              color: kCafeVinoOscuro,
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                            ),
                          ),
                          const Text(
                            "CC",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.7,
                          ),
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,

                        children: localizaciones.map((loc) {
                          return SelectedButton(
                            label: loc,
                            selected: localizacion == loc,
                            selectedColor: localizacion == loc
                                ? kCafeVinoOscuro
                                : theme.inputDecorationTheme.fillColor ??
                                      const Color(0xFFF8FAFC),
                            onTap: () => setState(() => localizacion = loc),
                          );
                        }).toList(),
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.7,
                          ),
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: posiciones.map((pos) {
                          return SelectedButton(
                            label: pos,
                            selected: posicion == pos,
                            selectedColor: posicion == pos
                                ? kCafeVinoOscuro
                                : theme.inputDecorationTheme.fillColor ??
                                      const Color(0xFFF8FAFC),
                            onTap: () => setState(() => posicion = pos),
                          );
                        }).toList(),
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.7,
                          ),
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        children: superficies.map((sup) {
                          return SelectedButton(
                            label: sup,
                            selected: superficie == sup,
                            selectedColor: superficie == sup
                                ? kCafeVinoOscuro
                                : theme.inputDecorationTheme.fillColor ??
                                      const Color(0xFFF8FAFC),
                            onTap: () => setState(() => superficie = sup),
                          );
                        }).toList(),
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.7,
                          ),
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: miometrios.map((mio) {
                          return Expanded(
                            child: SelectedButton(
                              label: mio,
                              selected: miometrio == mio,
                              selectedColor: miometrio == mio
                                  ? kRosaVieja
                                  : theme.inputDecorationTheme.fillColor ??
                                        const Color(0xFFF8FAFC),
                              onTap: () => setState(() => miometrio = mio),
                            ),
                          );
                        }).toList(),
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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.7,
                          ),
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        spacing: 8,
                        children: endometrios.map((endo) {
                          return Expanded(
                            child: SelectedButton(
                              label: endo,
                              selected: endometrio == endo,
                              selectedColor: endometrio == endo
                                  ? kRosaVieja
                                  : theme.inputDecorationTheme.fillColor ??
                                        const Color(0xFFF8FAFC),
                              onTap: () => setState(() => endometrio = endo),
                            ),
                          );
                        }).toList(),
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
