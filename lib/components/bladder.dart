import 'dart:io';

import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/general/selected_button.dart';
import 'package:med_reports/main.dart';
import 'package:med_reports/models/models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class BladderWidget extends StatefulWidget {
  final ReportDraft draft;
  const BladderWidget({super.key, required this.draft});

  @override
  State<BladderWidget> createState() => _BladderWidgetState();
}

class _BladderWidgetState extends State<BladderWidget> {
  @override
  Widget build(BuildContext context) {
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
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 18),

          // Regularidad
          Row(
            children: Regularity.values.map((reg) {
              final selected = widget.draft.bladder?.regularity == reg;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SelectedButton(
                    label: reg.toString(),
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
          ThemedNumberInput(
            labelText: "PARED (MM)",
            value: widget.draft.bladder?.wallMm,
            keyboardType: TextInputType.number,
            hidePrefixSuffixActions: true,
            onChanged: (value) {
              if (value == null) return;
              widget.draft.bladder?.wallMm = value.toDouble();
              setState(() {});
            },
          ),
          const SizedBox(height: 18),

          // Fondo de saco Douglas
          Text(
            "FONDO DE SACO DOUGLAS",
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary.withValues(alpha: 0.7),

              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Divider(color: theme.colorScheme.primary.withValues(alpha: 0.15)),
          const SizedBox(height: 12),
          Row(
            children: DouglasPouch.values.map((pouch) {
              final selected = widget.draft.bladder?.douglasPouch == pouch;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SelectedButton(
                    label: pouch.toString(),
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
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.primary.withValues(alpha: 0.7),
                  fontWeight: FontWeight.bold,
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
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary.withValues(alpha: 0.7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                DropdownButtonFormField<BladderDiagnostic>(
                  initialValue: widget.draft.bladder?.diagnosis,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Color(0xFFF8F9FB),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                  items: BladderDiagnostic.values
                      .map(
                        (d) => DropdownMenuItem(
                          value: d,
                          child: Text(d.toString()),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => setState(() {
                    widget.draft.bladder?.diagnosis = value;
                  }),
                ),
                const SizedBox(height: 16),

                // Diagnóstico ovarios
                Text(
                  "DIAGNÓSTICO OVARIOS",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary.withValues(alpha: 0.7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: OvaryDiagnostic.values.map((diag) {
                    final selected =
                        widget.draft.bladder?.ovaryDiagnosis == diag;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: SelectedButton(
                          label: diag.toString(),
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
              onPressed: () async {
                final pdf = await generarReportePdf(widget.draft);
                await guardarPdfEnDocumentos(pdf, "reporte_medico.pdf");
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

  Future<pw.Document> generarReportePdf(ReportDraft draft) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.all(32),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text("Reporte Médico", style: pw.TextStyle(fontSize: 24)),
                pw.SizedBox(height: 16),
                pw.Text("Paciente: ${draft.patient?.name ?? '-'}"),
                pw.Text("Edad: ${draft.patient?.age ?? '-'}"),
                pw.Text("CI: ${draft.patient?.ci ?? '-'}"),
                pw.Text("Tipo de Sangre: ${draft.patient?.bloodType ?? '-'}"),
                pw.Text("FUR: ${draft.patient?.fur ?? '-'}"),
                pw.Text("Gesta: ${draft.patient?.gesta ?? '-'}"),
                pw.Text("Para: ${draft.patient?.para ?? '-'}"),
                pw.Text("Cesárea: ${draft.patient?.cesarea ?? '-'}"),
                pw.Text("Aborto: ${draft.patient?.aborto ?? '-'}"),
                pw.Text("Ciclo: ${draft.patient?.period ?? '-'}"),
                pw.Text("Referencia: ${draft.patient?.reference ?? '-'}"),
                pw.Text("Motivo: ${draft.patient?.motivo ?? '-'}"),
                pw.Divider(),
                pw.Text("Protocolo: ${draft.protocol?.type.toString() ?? '-'}"),
                pw.Text("Equipo: ${draft.protocol?.equipment ?? '-'}"),
                pw.Divider(),
                pw.Text("Hallazgos: ${draft.findings.toString()}"),
                pw.Text("Útero: ${draft.uterineFindings?.toString() ?? '-'}"),
                pw.Text(
                  "Ovario Derecho: ${draft.rightOvary.toString() }",
                ),
                pw.Text(
                  "Ovario Izquierdo: ${draft.leftOvary.toString() }",
                ),
                pw.Text("Nódulos: ${draft.nodules?.toString() ?? '-'}"),
                pw.Text(
                  "Estado Vaginal: ${draft.vaginalState?.toString() ?? '-'}",
                ),
                pw.Text(
                  "Estado Cervical: ${draft.cervixState?.toString() ?? '-'}",
                ),
                pw.Divider(),
                pw.Text("Vejiga:"),
                pw.Text("  Regularidad: ${draft.bladder?.regularity ?? '-'}"),
                pw.Text("  Pared (mm): ${draft.bladder?.wallMm ?? '-'}"),
                pw.Text(
                  "  Fondo de saco Douglas: ${draft.bladder?.douglasPouch ?? '-'}",
                ),
                pw.Text(
                  "  Diagnóstico útero: ${draft.bladder?.diagnosis ?? '-'}",
                ),
                pw.Text(
                  "  Diagnóstico ovarios: ${draft.bladder?.ovaryDiagnosis ?? '-'}",
                ),
                pw.Text("  Conclusión: ${draft.bladder?.conclusion ?? '-'}"),
                pw.Divider(),
                pw.Text("Doctor: ${draft.doctor ?? '-'}"),
                pw.Text("Clínica: ${draft.clinic ?? '-'}"),
                pw.Text("Fecha: ${draft.createdAt?.toString() ?? '-'}"),
                pw.Divider(),
                pw.Text("Meta: ${draft.meta?.toString() ?? '-'}"),
              ],
            ),
          );
        },
      ),
    );

    return pdf;
  }

  Future<void> guardarPdfEnDocumentos(
    pw.Document pdf,
    String nombreArchivo,
  ) async {
    try {
      String? documentos;
      if (Platform.isWindows) {
        final userProfile = Platform.environment['UserProfile'];
        documentos = '$userProfile\\Documents';
      } else if (Platform.isMacOS) {
        final home = Platform.environment['HOME'];
        documentos = '$home/Documents';
      } else {
        // Otras plataformas: usa path_provider como fallback
        final directory = await getApplicationDocumentsDirectory();
        documentos = directory.path;
      }

      final directory = Directory(documentos);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
      final file = File('${directory.path}/$nombreArchivo');
      debugPrint("Ruta absoluta: ${file.absolute.path}");
      final bytes = await pdf.save();
      await file.writeAsBytes(bytes);
      debugPrint("PDF guardado en: ${file.path}");
    } catch (e, st) {
      debugPrint("Error guardando PDF: $e\n$st");
    }
  }
}
