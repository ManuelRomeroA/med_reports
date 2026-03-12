/// Central models library
///
/// This file aggregates all domain models used by the application.
/// Each model file is declared as a `part` and the generated code is
/// emitted into `models.freezed.dart` and `models.g.dart` so there is a
/// single generated artifact for all models.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.dart';
part 'study_protocol.dart';

part 'ovary.dart';
part 'bladder.dart';
part 'nodules.dart';
part 'findings.dart';
part 'report.dart';
part 'report_draft.dart';

part 'models.freezed.dart';
part 'models.g.dart';
