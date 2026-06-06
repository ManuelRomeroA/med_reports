import 'package:flutter/material.dart';
import 'package:med_reports/components/eco_pelvico/bladder.dart';
import 'package:med_reports/components/eco_pelvico/patient_info.dart';
import 'package:med_reports/components/shared/state_selecter.dart';
import 'package:med_reports/components/eco_pelvico/nodulos/nodulos.dart';
import 'package:med_reports/components/eco_pelvico/ovary.dart';
import 'package:med_reports/components/eco_pelvico/study_protocol.dart';
import 'package:med_reports/components/eco_pelvico/utero_widget.dart';
import 'package:med_reports/models/models.dart';

/// Eco Pélvico capture form view.
/// Owns its own [ReportDraft] created in [initState].
/// Implements [AutomaticKeepAliveClientMixin] to preserve state across tab switches.
/// This widget is a pure content widget — it does NOT include a Scaffold or HeaderWidget.
/// The app-level Scaffold and HeaderWidget live in [AppShell].
class EcoPelvicoView extends StatefulWidget {
  const EcoPelvicoView({super.key});

  @override
  State<EcoPelvicoView> createState() => _EcoPelvicoViewState();
}

class _EcoPelvicoViewState extends State<EcoPelvicoView>
    with AutomaticKeepAliveClientMixin {
  late ReportDraft draft;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    draft = ReportDraft(
      rightOvary: Ovary(side: OvarySide.right, measures: OvaryMeasurement()),
      leftOvary: Ovary(side: OvarySide.left, measures: OvaryMeasurement()),
      doctor: 'Dra. Gisemar Gutiérrez González',
      clinic: 'Maternidad Privada Gonzalez Mendoza — Av. 24 entre calles 2 y 4. Telf.: (0414) 556.09.53',
    );
  }

  @override
  Widget build(BuildContext context) {
    // Required by AutomaticKeepAliveClientMixin
    super.build(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 24,
          children: [
            PatientInfoWidget(draft: draft),
            StudyProtocolWidget(draft: draft),
            Row(
              spacing: 24,
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    spacing: 24,
                    mainAxisSize: .min,
                    children: [
                      UteroWidget(draft: draft),
                      NodulesWidget(draft: draft),
                      Row(
                        mainAxisAlignment: .start,
                        crossAxisAlignment: .center,
                        spacing: 24,
                        children: [
                          Expanded(
                            child: OvaryWidget(
                              titulo: "Ovario Derecho",
                              ovary: draft.rightOvary,
                            ),
                          ),
                          Expanded(
                            child: OvaryWidget(
                              titulo: "Ovario Izquierdo",
                              ovary: draft.leftOvary,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: .start,
                        crossAxisAlignment: .center,
                        spacing: 24,
                        children: [
                          Expanded(
                            child: StateSelector<VaginalStatus>(
                              titulo: "ESTADO VAGINAL",
                              draft: draft,
                              object: draft.vaginalState!,
                            ),
                          ),
                          Expanded(
                            child: StateSelector<CervicalStatus>(
                              titulo: "CUELLO UTERINO",
                              draft: draft,
                              object: draft.cervixState!,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(child: BladderWidget(draft: draft)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
