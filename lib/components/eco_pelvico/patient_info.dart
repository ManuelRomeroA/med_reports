import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/shared/selected_button.dart';
import 'package:med_reports/theme/med_theme.dart';
import 'package:med_reports/models/models.dart';

class PatientInfoWidget extends StatefulWidget {
  final ReportDraft draft;
  const PatientInfoWidget({super.key, required this.draft});

  @override
  State<PatientInfoWidget> createState() => _PatientInfoWidgetState();
}

class _PatientInfoWidgetState extends State<PatientInfoWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: theme.colorScheme.primary.withAlpha(33)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person_outline, color: theme.primaryColor),
              const SizedBox(width: 8),
              Text(
                'IDENTIFICACIÓN DE LA PACIENTE',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(height: 1, color: theme.colorScheme.primary.withAlpha(38)),
          const SizedBox(height: 18),

          Row(
            children: [
              Expanded(
                flex: 2,
                child: ThemedTextInput(
                  labelText: "NOMBRES Y APELLIDOS",
                  value: widget.draft.patient?.name,
                  onChanged: (value) {
                    widget.draft.patient?.name = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  labelText: "C.I.",
                  value: widget.draft.patient?.ci,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    widget.draft.patient?.ci = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  labelText: "EDAD",
                  keyboardType: TextInputType.number,
                  value: widget.draft.patient?.age?.toString(),
                  onChanged: (value) {
                    widget.draft.patient?.age = int.tryParse(value);
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonFormField<BloodType>(
                    initialValue: widget.draft.patient?.bloodType,
                    items: BloodType.values
                        .map(
                          (type) => DropdownMenuItem(
                            value: type,
                            child: Text(type.toString()),
                          ),
                        )
                        .toList(),
                    decoration: const InputDecoration(
                      labelText: "GRUPO SANGUÍNEO",
                    ),
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                    onChanged: (value) {
                      if (value == null) return;
                      widget.draft.patient?.bloodType = value;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedDatePicker(
                  labelText: "FUR",
                  value: widget.draft.patient?.fur,
                  onChanged: (date) {
                    widget.draft.patient?.fur = date;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: Row(
                  children: PeriodType.values
                      .where((type) => PeriodType.unknow != type)
                      .map(
                        (type) => SelectedButton(
                          label: type.name.toUpperCase(),
                          selected: widget.draft.patient?.period == type,
                          selectedColor: MedTheme.cafeVinoOscuro,
                          onTap: () => setState(
                            () => widget.draft.patient?.period = type,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  labelText: "GESTA",
                  value: widget.draft.patient?.gesta,
                  onChanged: (value) {
                    widget.draft.patient?.gesta = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  labelText: "PARA",
                  value: widget.draft.patient?.para,
                  onChanged: (value) {
                    widget.draft.patient?.para = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  labelText: "CESAREA",
                  value: widget.draft.patient?.cesarea,
                  onChanged: (value) {
                    widget.draft.patient?.cesarea = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  labelText: "ABORTOS",
                  value: widget.draft.patient?.aborto,
                  onChanged: (value) {
                    widget.draft.patient?.aborto = value;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  labelText: "REFERENCIA",
                  value: widget.draft.patient?.reference,
                  onChanged: (value) {
                    widget.draft.patient?.reference = value;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ThemedTextInput(
                  labelText: "M.C. (MOTIVO DE CONSULTA)",
                  value: widget.draft.patient?.motivo,
                  onChanged: (value) {
                    widget.draft.patient?.motivo = value;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
