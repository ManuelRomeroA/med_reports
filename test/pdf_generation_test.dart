import 'package:flutter_test/flutter_test.dart';
import 'package:med_reports/models/models.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Report _draftToReport(ReportDraft draft) {
  return Report(
    id: draft.id ?? '',
    createdAt: draft.createdAt ?? DateTime.now(),
    patient: draft.patient!,
    protocol: draft.protocol!,
    findings: draft.findings!,
    doctor: draft.doctor,
    clinic: draft.clinic,
    meta: draft.meta,
  );
}

void main() {
  test('Draft to Report conversion', () {
    final draft = ReportDraft(
      id: 'draft1',
      patient: Patient(
        id: 'p100',
        name: 'Maria Test',
        ci: '111111',
        age: 40,
        bloodType: 'A+',
      ),
      protocol: StudyProtocol(type: StudyType.pelvic, equipment: 'Mindray'),
      findings: Findings(
        uterusDiagnosis: 'normal',
        conclusion: 'sin patología',
      ),
      doctor: 'Dra. Perez',
      clinic: 'Maternidad',
      meta: {'conclusion': 'sin patología', 'version': 1},
      rightOvary: Ovary(
        side: OvarySide.right,
        type: OvaryType.normal,
        measures: OvaryMeasurement(ap: 0, tr: 0, lo: 0),
      ),
      leftOvary: Ovary(
        side: OvarySide.left,
        type: OvaryType.normal,
        measures: OvaryMeasurement(ap: 0, tr: 0, lo: 0),
      ),
    );
    final report = _draftToReport(draft);
    expect(report.id, 'draft1');
    expect(report.patient.name, 'Maria Test');
    expect(report.protocol.equipment, 'Mindray');
    expect(report.findings.conclusion, 'sin patología');
    expect(report.doctor, 'Dra. Perez');
    expect(report.clinic, 'Maternidad');
    expect(report.meta?['version'], 1);
  });

  test('PDF generation from Report', () async {
    final report = Report(
      id: 'pdf1',
      createdAt: DateTime.now(),
      patient: Patient(id: 'p101', name: 'Ana Prueba', ci: '222222', age: 39),
      protocol: StudyProtocol(type: StudyType.transvaginal, equipment: 'GE'),
      findings: Findings(
        uterusDiagnosis: 'normal',
        conclusion: 'sin hallazgos',
      ),
      doctor: 'Dr. Test',
      clinic: 'Clínica Test',
      meta: {'conclusion': 'sin hallazgos'},
    );

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Text('Paciente: ${report.patient.name}'),
              pw.Text('Edad: ${report.patient.age ?? '-'}'),
              pw.Text('CI: ${report.patient.ci ?? '-'}'),
              pw.Text('Protocolo: ${report.protocol.type.toString()}'),
              pw.Text('Doctor: ${report.doctor ?? '-'}'),
              pw.Text('Clínica: ${report.clinic ?? '-'}'),
              pw.Text('Conclusión: ${report.meta?['conclusion'] ?? '-'}'),
            ],
          );
        },
      ),
    );
    final pdfBytes = await pdf.save();
    // Verifica que se haya generado algo (PDF no vacío)
    expect(pdfBytes.length, greaterThan(500));
  });
}
