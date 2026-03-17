import 'package:flutter_test/flutter_test.dart';
import 'package:med_reports/models/models.dart';

void main() {
  test('OvaryMeasurement JSON roundtrip and volume', () {
    final m = OvaryMeasurement(ap: 10.0, tr: 5.0, lo: 4.0);
    // check volume calculation
    expect(m.volume, closeTo(10.0 * 5.0 * 4.0 * 0.523, 1e-6));

    final json = m.toJson();
    final parsed = OvaryMeasurement.fromJson(json);

    expect(parsed.ap, m.ap);
    expect(parsed.tr, m.tr);
    expect(parsed.lo, m.lo);
    expect(parsed.volume, closeTo(m.volume, 1e-6));
  });

  test('Patient JSON roundtrip', () {
    final patient = Patient(
      id: 'p1',
      name: 'Jane Doe',
      ci: '12345678',
      age: 32,
      bloodType: BloodType.op,
      fur: DateTime.parse('1990-01-02T00:00:00Z'),
      gesta: '1',
      para: '0',
      cesarea: '0',
      aborto: '0',
      reference: 'clinic',
      motivo: 'pelvic pain',
    );

    final json = patient.toJson();
    final parsed = Patient.fromJson(json);

    expect(parsed.id, patient.id);
    expect(parsed.name, patient.name);
    expect(parsed.ci, patient.ci);
    expect(parsed.age, patient.age);
    expect(parsed.fur, patient.fur);
  });

  test('Report JSON roundtrip', () {
    final findings = Findings(
      uterusDiagnosis: 'normal',
      conclusion: 'no abnormality',
    );
    final protocol = StudyProtocol(
      type: StudyType.transvaginal,
      equipment: 'GE',
    );
    final patient = Patient(id: 'p2', name: 'John Doe');
    final report = Report(
      id: 'r1',
      createdAt: DateTime.parse('2023-01-01T12:00:00Z'),
      patient: patient,
      protocol: protocol,
      findings: findings,
      doctor: 'Dr. Who',
      clinic: 'Central',
      meta: {'version': 1},
    );

    final json = report.toJson();
    // Some nested objects may be left as model instances by generated code;
    // ensure nested entries are maps before deserializing.
    json['patient'] = report.patient.toJson();
    json['protocol'] = report.protocol.toJson();
    json['findings'] = report.findings.toJson();
    final parsed = Report.fromJson(Map<String, dynamic>.from(json));

    expect(parsed.id, report.id);
    expect(parsed.createdAt.toUtc(), report.createdAt.toUtc());
    expect(parsed.patient.id, report.patient.id);
    expect(parsed.protocol.type, report.protocol.type);
    expect(parsed.findings.conclusion, report.findings.conclusion);
    expect(parsed.doctor, report.doctor);
    expect(parsed.meta?['version'], 1);
  });
}
