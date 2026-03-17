/// Central models library
///
/// This file aggregates all domain models used by the application.
/// Each model file is declared as a `part` and the generated code is
/// emitted into `models.freezed.dart` and `models.g.dart` so there is a
/// single generated artifact for all models.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'src/patient.dart';
part 'src/study_protocol.dart';

part 'src/ovary.dart';
part 'src/bladder.dart';
part 'src/nodules.dart';
part 'src/findings.dart';
part 'src/report.dart';
part 'src/report_draft.dart';
part 'src/uterine_findings.dart';
part 'src/vaginal_status.dart';
part 'src/cervical_status.dart';

/// enums
part 'enums/state_value.dart';

part 'models.freezed.dart';
part 'models.g.dart';
