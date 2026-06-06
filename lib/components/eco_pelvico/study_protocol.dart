import 'package:flutter/material.dart';
import 'package:med_reports/components/shared/selected_button.dart';
import 'package:med_reports/models/models.dart';

class StudyProtocolWidget extends StatefulWidget {
  final ReportDraft draft;
  const StudyProtocolWidget({super.key, required this.draft});

  @override
  State<StudyProtocolWidget> createState() => _StudyProtocolWidgetState();
}

class _StudyProtocolWidgetState extends State<StudyProtocolWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      padding: const EdgeInsets.all(24),
      width: double.infinity,
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
          // Título y línea
          Row(
            children: [
              Icon(Icons.science_outlined, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'PROTOCOLO DE ESTUDIO',
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 18),

          // Fila de tipo de estudio y datos del equipo
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tipo de estudio
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text(
                      "TIPO DE ESTUDIO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        letterSpacing: 1,
                        color: theme.colorScheme.primary.withValues(alpha: 0.7),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: StudyType.values
                          .where((type) => StudyType.unknow != type)
                          .map((type) {
                            return SelectedButton(
                              label: type.toString(),
                              selected: widget.draft.protocol?.type == type,
                              selectedColor: theme.colorScheme.primary,
                              onTap: () {
                                debugPrint("Type: $type");
                                widget.draft.protocol?.type = type;
                                debugPrint(
                                  "Type selected: ${widget.draft.protocol?.type}",
                                );

                                setState(() {});
                              },
                            );
                          })
                          .toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 18),
              // Datos del equipo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "DATOS DEL EQUIPO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      letterSpacing: 1,
                      color: theme.colorScheme.primary.withValues(alpha: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color:
                          theme.inputDecorationTheme.fillColor ??
                          const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Equipo de Ultrasonido Mindray Alta Resolución, se practica el estudio.",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xFF4a3a3d),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
