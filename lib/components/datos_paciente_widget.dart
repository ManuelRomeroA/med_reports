import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';

class DatosPacienteWidget extends StatefulWidget {
  const DatosPacienteWidget({super.key});

  @override
  State<DatosPacienteWidget> createState() => _DatosPacienteWidgetState();
}

class _DatosPacienteWidgetState extends State<DatosPacienteWidget> {
  String nombre = '';
  String cedula = '';
  String edad = '';
  String referencia = '';
  String motivo = '';
  String fur = '';
  String gesta = '';
  String para = '';
  String cesarea = '';
  String aborto = '';

  DateTime? fechaFur;
  String? grupoSanguineo;
  String patronRegla = "NORMAL";

  final grupos = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
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
        children: [
          // Título y línea
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
          Container(
            height: 1,
            color: theme.colorScheme.primary.withValues(alpha: 0.15),
          ),
          const SizedBox(height: 18),

          // Primera fila: Nombres, C.I., Edad
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ThemedTextInput(
                  value: nombre,
                  onChanged: (value) => setState(() => nombre = value),
                  labelText: "NOMBRES Y APELLIDOS",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: cedula,
                  onChanged: (value) => setState(() => cedula = value),
                  labelText: "C.I.",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: edad,
                  onChanged: (value) => setState(() => edad = value),
                  keyboardType: TextInputType.number,
                  labelText: "EDAD",
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Segunda fila: Grupo sanguíneo, FUR, Patrón de regla
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: .symmetric(horizontal: 10),
                  child: DropdownButtonFormField<String>(
                    initialValue: grupoSanguineo,

                    items: grupos
                        .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                        .toList(),
                    onChanged: (v) => setState(() => grupoSanguineo = v),
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
                  value: DateTime.now(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    SelectedButton(
                      label: "REGULAR",
                      selected: patronRegla == "REGULAR",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () => setState(() => patronRegla = "REGULAR"),
                    ),
                    SelectedButton(
                      label: "EXCESIVA",
                      selected: patronRegla == "EXCESIVA",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () => setState(() => patronRegla = "EXCESIVA"),
                    ),
                    SelectedButton(
                      label: "NORMAL",
                      selected: patronRegla == "NORMAL",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () => setState(() => patronRegla = "NORMAL"),
                    ),
                    SelectedButton(
                      label: "ESCASA",
                      selected: patronRegla == "ESCASA",
                      selectedColor: kCafeVinoOscuro,
                      onTap: () => setState(() => patronRegla = "ESCASA"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Tercera fila: Gesta, Para, Cesarea, Abortos
          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  value: gesta,
                  onChanged: (value) => setState(() => gesta = value),
                  labelText: "GESTA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: para,
                  onChanged: (value) => setState(() => para = value),
                  labelText: "PARA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: cesarea,
                  onChanged: (value) => setState(() => cesarea = value),
                  labelText: "CESAREA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ThemedTextInput(
                  value: aborto,
                  onChanged: (value) => setState(() => aborto = value),
                  labelText: "ABORTOS",
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Cuarta fila: Referencia y Motivo de consulta
          Row(
            children: [
              Expanded(
                child: ThemedTextInput(
                  value: referencia,
                  onChanged: (value) => setState(() => referencia = value),
                  labelText: "REFERENCIA",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ThemedTextInput(
                  value: motivo,
                  onChanged: (value) => setState(() => motivo = value),
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
