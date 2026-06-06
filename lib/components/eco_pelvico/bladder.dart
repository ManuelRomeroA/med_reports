import 'dart:io';

import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/shared/selected_button.dart';
import 'package:med_reports/theme/med_theme.dart';
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
                    selectedColor: MedTheme.cafeVinoOscuro,
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
                    selectedColor: MedTheme.cafeVinoOscuro,
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
                          selectedColor: MedTheme.cafeVinoOscuro,
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

    // PDF palette from MedTheme (single color source — Phase 1 task 1.10)
    const vino = PdfColor.fromInt(0xFF8B5A63); // MedTheme.vino
    const vinoClaro = PdfColor.fromInt(0xFFF5ECED); // MedTheme.vinoClaro
    const grisTexto = PdfColor.fromInt(0xFF333333); // MedTheme.grisTexto
    const grisClaro = PdfColor.fromInt(0xFFF8F8F8); // MedTheme.grisClaro

    // --- Helpers ---

    pw.Widget sectionHeader(String title) => pw.Container(
      decoration: const pw.BoxDecoration(
        color: vino,
        borderRadius: pw.BorderRadius.only(
          topLeft: pw.Radius.circular(4),
          topRight: pw.Radius.circular(4),
        ),
      ),
      padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Text(
          title,
          style: pw.TextStyle(
            color: PdfColors.white,
            fontWeight: pw.FontWeight.bold,
            fontSize: 9,
          ),
        ),
      ),
    );

    pw.Widget field(String label, String value) => pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 2),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: 130,
            child: pw.Text(
              label,
              style: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                fontSize: 8,
                color: grisTexto,
              ),
            ),
          ),
          pw.Expanded(
            child: pw.Text(
              value,
              style: const pw.TextStyle(fontSize: 8, color: grisTexto),
            ),
          ),
        ],
      ),
    );

    pw.Widget fieldGrid(List<(String, String)> pairs) => pw.Table(
      columnWidths: {
        0: const pw.FlexColumnWidth(1),
        1: const pw.FlexColumnWidth(1),
      },
      children: [
        for (int i = 0; i < pairs.length; i += 2)
          pw.TableRow(
            children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 4,
                ),
                child: field(pairs[i].$1, pairs[i].$2),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 4,
                ),
                child: i + 1 < pairs.length
                    ? field(pairs[i + 1].$1, pairs[i + 1].$2)
                    : pw.SizedBox(),
              ),
            ],
          ),
      ],
    );

    pw.Widget card(pw.Widget child) => pw.Container(
      margin: const pw.EdgeInsets.only(bottom: 10),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: vinoClaro, width: 1),
        borderRadius: pw.BorderRadius.circular(4),
      ),
      child: child,
    );

    pw.Widget cardSection(String title, pw.Widget content) => card(
      pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          sectionHeader(title),
          pw.Padding(padding: const pw.EdgeInsets.all(8), child: content),
        ],
      ),
    );

    // --- Fecha formateada (momento exacto de generación) ---
    final now = DateTime.now();
    final fecha =
        '${now.day.toString().padLeft(2, '0')}/'
        '${now.month.toString().padLeft(2, '0')}/'
        '${now.year}';

    // --- Ovario helper ---
    pw.Widget ovarySection(String title, Ovary ovary) {
      final m = ovary.measures;
      return cardSection(
        title,
        fieldGrid([
          ('Tipo:', ovary.type.toString()),
          ('AP (mm):', m.ap?.toString() ?? '-'),
          ('TR (mm):', m.tr?.toString() ?? '-'),
          ('LO (mm):', m.lo?.toString() ?? '-'),
          ('Volumen (mm³):', m.volume?.toStringAsFixed(2) ?? '-'),
          ('Notas:', ovary.notes ?? '-'),
        ]),
      );
    }

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.symmetric(horizontal: 32, vertical: 28),
        header: (context) => pw.Column(
          children: [
            // Header institucional
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              decoration: const pw.BoxDecoration(
                color: vino,
                borderRadius: pw.BorderRadius.all(pw.Radius.circular(4)),
              ),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  // Logo placeholder (círculo — reemplazar con SVG a futuro)
                  pw.Container(
                    width: 48,
                    height: 48,
                    margin: const pw.EdgeInsets.only(right: 12),
                    decoration: pw.BoxDecoration(
                      shape: pw.BoxShape.circle,
                      border: pw.Border.all(color: PdfColors.white, width: 1.5),
                    ),
                    child: pw.Center(
                      child: pw.Text(
                        'GG',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),

                  // Izquierda: identidad de la doctora
                  pw.Expanded(
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Text(
                          'Dra. Gisemar Gutiérrez González',
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        pw.SizedBox(height: 3),
                        pw.Text(
                          'Ginecología · Obstetricia · Ecosonogramas · Cirugía Estética',
                          style: const pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 7.5,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                        pw.Text(
                          'Plasma rico en plaquetas · Rejuvenecimiento vaginal · Partos y Cesáreas',
                          style: const pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 7.5,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                        pw.SizedBox(height: 4),
                        pw.Text(
                          'Maternidad Privada Gonzalez Mendoza — Av. 24 entre calles 2 y 4',
                          style: const pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 7.5,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                        pw.Text(
                          'Telf.: (0414) 556.09.53',
                          style: const pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 7.5,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  // Derecha: protocolo y fecha
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        draft.protocol?.type.toString() ?? 'ECOSONOGRAMA',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Text(
                        'Fecha: $fecha',
                        style: const pw.TextStyle(
                          color: PdfColors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
          ],
        ),
        footer: (context) => pw.Column(
          children: [
            pw.Divider(color: vinoClaro),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  draft.clinic ?? '',
                  style: const pw.TextStyle(fontSize: 7, color: grisTexto),
                ),
                pw.Text(
                  'Pág. ${context.pageNumber} / ${context.pagesCount}',
                  style: const pw.TextStyle(fontSize: 7, color: grisTexto),
                ),
              ],
            ),
          ],
        ),
        build: (context) => [
          // 1. DATOS DEL PACIENTE
          cardSection(
            'DATOS DEL PACIENTE',
            pw.Column(
              children: [
                fieldGrid([
                  ('Paciente:', draft.patient?.name ?? '-'),
                  ('Edad:', draft.patient?.age?.toString() ?? '-'),
                  ('CI:', draft.patient?.ci ?? '-'),
                  (
                    'Tipo de Sangre:',
                    draft.patient?.bloodType.toString() ?? '-',
                  ),
                  ('FUR:', draft.patient?.fur?.toString() ?? '-'),
                  ('Ciclo:', draft.patient?.period.toString() ?? '-'),
                  ('Gesta:', draft.patient?.gesta ?? '-'),
                  ('Para:', draft.patient?.para ?? '-'),
                  ('Cesárea:', draft.patient?.cesarea ?? '-'),
                  ('Abortos:', draft.patient?.aborto ?? '-'),
                  ('Referencia:', draft.patient?.reference ?? '-'),
                  ('Motivo:', draft.patient?.motivo ?? '-'),
                ]),
              ],
            ),
          ),

          // 2. PROTOCOLO
          cardSection(
            'PROTOCOLO DE ESTUDIO',
            fieldGrid([
              ('Protocolo:', draft.protocol?.type.toString() ?? '-'),
              ('Equipo:', draft.protocol?.equipment ?? '-'),
            ]),
          ),

          // 3. VEJIGA Y DIAGNÓSTICO
          cardSection(
            'VEJIGA',
            fieldGrid([
              ('Regularidad:', draft.bladder?.regularity.toString() ?? '-'),
              ('Pared (mm):', draft.bladder?.wallMm?.toString() ?? '-'),
              (
                'Fondo de saco Douglas:',
                draft.bladder?.douglasPouch.toString() ?? '-',
              ),
              ('', ''),
            ]),
          ),

          cardSection(
            'DIAGNÓSTICO',
            fieldGrid([
              (
                'Diagnóstico Útero:',
                draft.bladder?.diagnosis?.toString() ?? '-',
              ),
              (
                'Diagnóstico Ovarios:',
                draft.bladder?.ovaryDiagnosis?.toString() ?? '-',
              ),
            ]),
          ),

          // 4. ÚTERO + NÓDULOS
          if (draft.uterineFindings != null)
            cardSection(
              'ÚTERO',
              pw.Column(
                children: [
                  fieldGrid([
                    (
                      'Longitud (mm):',
                      draft.uterineFindings!.longitud?.toString() ?? '-',
                    ),
                    ('AP (mm):', draft.uterineFindings!.ap?.toString() ?? '-'),
                    (
                      'Transverso (mm):',
                      draft.uterineFindings!.transverse?.toString() ?? '-',
                    ),
                    (
                      'Otro (mm):',
                      draft.uterineFindings!.other?.toString() ?? '-',
                    ),
                    (
                      'Localización:',
                      draft.uterineFindings!.localization.toString(),
                    ),
                    ('Posición:', draft.uterineFindings!.position.toString()),
                    ('Superficie:', draft.uterineFindings!.surface.toString()),
                    (
                      'Miometrio:',
                      draft.uterineFindings!.myometrium.toString(),
                    ),
                    (
                      'Endometrio:',
                      draft.uterineFindings!.endometrium.toString(),
                    ),
                    (
                      'Volumen (mm³):',
                      draft.uterineFindings!.volume?.toStringAsFixed(2) ?? '-',
                    ),
                  ]),
                  if (draft.nodules?.hasNodules == true &&
                      draft.nodules?.detail != null) ...[
                    pw.SizedBox(height: 8),
                    pw.Container(
                      color: vinoClaro,
                      padding: const pw.EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: pw.Text(
                        'NÓDULOS',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 8,
                          color: vino,
                        ),
                      ),
                    ),
                    pw.SizedBox(height: 6),
                    fieldGrid([
                      (
                        'Localización:',
                        draft.nodules!.detail!.location.toString(),
                      ),
                      (
                        'Longitud (mm):',
                        draft.nodules!.detail!.longitud.toString(),
                      ),
                      ('AP (mm):', draft.nodules!.detail!.ap.toString()),
                      ('T (mm):', draft.nodules!.detail!.t.toString()),
                      (
                        'Descripción:',
                        draft.nodules!.detail!.description ?? '-',
                      ),
                      ('', ''),
                    ]),
                  ],
                ],
              ),
            ),

          // 5. OVARIOS
          ovarySection('OVARIO DERECHO', draft.rightOvary),
          // Salto de página automático si el contenido no cabe
          pw.NewPage(),
          ovarySection('OVARIO IZQUIERDO', draft.leftOvary),

          // 6. ESTADO VAGINAL Y CERVICAL
          cardSection(
            'ESTADO VAGINAL Y CERVICAL',
            fieldGrid([
              ('Estado Vaginal:', draft.vaginalState?.status.toString() ?? '-'),
              ('Nota Vaginal:', draft.vaginalState?.note ?? '-'),
              ('Estado Cervical:', draft.cervixState?.status.toString() ?? '-'),
              ('Nota Cervical:', draft.cervixState?.note ?? '-'),
            ]),
          ),

          // 8. CONCLUSIÓN
          if (draft.bladder?.conclusion?.isNotEmpty == true)
            card(
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  sectionHeader('CONCLUSIÓN'),
                  pw.Container(
                    width: double.infinity,
                    color: grisClaro,
                    padding: const pw.EdgeInsets.all(10),
                    child: pw.Text(
                      draft.bladder!.conclusion!,
                      style: const pw.TextStyle(fontSize: 9, color: grisTexto),
                    ),
                  ),
                ],
              ),
            ),

          // 9. FIRMA
          pw.SizedBox(height: 20),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.end,
            children: [
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Container(
                    width: 160,
                    decoration: const pw.BoxDecoration(
                      border: pw.Border(
                        bottom: pw.BorderSide(color: grisTexto, width: 0.5),
                      ),
                    ),
                    height: 30,
                  ),
                  pw.SizedBox(height: 4),
                  pw.Text(
                    draft.doctor?.isNotEmpty == true ? draft.doctor! : '-',
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                      color: grisTexto,
                    ),
                  ),
                  pw.Text(
                    draft.clinic?.isNotEmpty == true ? draft.clinic! : '',
                    style: const pw.TextStyle(fontSize: 7, color: grisTexto),
                  ),
                ],
              ),
            ],
          ),
        ],
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
