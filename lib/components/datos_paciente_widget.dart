import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';

class DatosPacienteWidget extends StatefulWidget {
  final ReportDraft draft;
  const DatosPacienteWidget({super.key, required this.draft});

  @override
  State<DatosPacienteWidget> createState() => _DatosPacienteWidgetState();
}

class _DatosPacienteWidgetState extends State<DatosPacienteWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    widget.draft.patient ??= Patient(id: 'draft_id', name: "");
    // Si no existe el draft.patient, lo agregamos

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
              Icon(Icons.person_outline, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                'IDENTIFICACIÓN DE LA PACIENTE',
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 15,
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
                  value: widget.draft.patient?.name,

                  onChanged: (value) {
                    widget.draft.patient?.name = value;
                    setState(() {});
                  },
                  labelText: "NOMBRES Y APELLIDOS",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.ci,
                  onChanged: (value) {
                    widget.draft.patient?.ci = value;
                    setState(() {});
                  },
                  labelText: "C.I.",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.age?.toString(),
                  onChanged: (value) {
                    widget.draft.patient?.age = int.tryParse(value);
                    setState(() {});
                  },
                  keyboardType: TextInputType.number,
                  labelText: "EDAD",
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
                  child: DropdownButtonFormField<String>(
                    initialValue: widget.draft.patient?.bloodGroup,
                    items: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
                        .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                        .toList(),
                    onChanged: (v) {
                      widget.draft.patient?.bloodGroup = v;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      labelText: "GRUPO SANGUÍNEO",
                    ),
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedDatePicker(
                  labelText: "FUR",
                  value: widget.draft.patient?.fur ?? DateTime.now(),
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
                  children: [
                    SelectedButton(
                      label: "REGULAR",
                      selected: widget.draft.patient?.referencia == "REGULAR",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () {
                        widget.draft.patient?.referencia = "REGULAR";
                        setState(() {});
                      },
                    ),
                    SelectedButton(
                      label: "EXCESIVA",
                      selected: widget.draft.patient?.referencia == "EXCESIVA",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () {
                        widget.draft.patient?.referencia = "EXCESIVA";
                        setState(() {});
                      },
                    ),
                    SelectedButton(
                      label: "NORMAL",
                      selected: widget.draft.patient?.referencia == "NORMAL",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () {
                        widget.draft.patient?.referencia = "NORMAL";
                        setState(() {});
                      },
                    ),
                    SelectedButton(
                      label: "ESCASA",
                      selected: widget.draft.patient?.referencia == "ESCASA",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () {
                        widget.draft.patient?.referencia = "ESCASA";
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.gesta,
                  onChanged: (value) {
                    widget.draft.patient?.gesta = value;
                    setState(() {});
                  },
                  labelText: "GESTA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.para,
                  onChanged: (value) {
                    widget.draft.patient?.para = value;
                    setState(() {});
                  },
                  labelText: "PARA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.cesarea,
                  onChanged: (value) {
                    widget.draft.patient?.cesarea = value;
                    setState(() {});
                  },
                  labelText: "CESAREA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.aborto,
                  onChanged: (value) {
                    widget.draft.patient?.aborto = value;
                    setState(() {});
                  },
                  labelText: "ABORTOS",
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  value: widget.draft.patient?.referencia,
                  onChanged: (value) {
                    widget.draft.patient?.referencia = value;
                    setState(() {});
                  },
                  labelText: "REFERENCIA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ThemedTextInput(
                  value: widget.draft.patient?.motivo,
                  onChanged: (value) {
                    widget.draft.patient?.motivo = value;
                    setState(() {});
                  },
                  labelText: "M.C. (MOTIVO DE CONSULTA)",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
