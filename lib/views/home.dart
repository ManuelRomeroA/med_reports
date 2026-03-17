import 'package:flutter/material.dart';
import 'package:med_reports/components/bladder.dart';
import 'package:med_reports/components/patient_info.dart';
import 'package:med_reports/components/state_selecter.dart';
import 'package:med_reports/components/header.dart';
import 'package:med_reports/components/nodulos/nodulos.dart';
import 'package:med_reports/components/ovary.dart';
import 'package:med_reports/components/study_protocol.dart';
import 'package:med_reports/components/utero_widget.dart';
import 'package:med_reports/models/models.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ReportDraft draft;

  @override
  void initState() {
    super.initState();
    draft = ReportDraft.initObject();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(
      "Vaginal state: ${draft.vaginalState?.status}, note: ${draft.vaginalState?.note}",
    );
    debugPrint(
      "Cervical state: ${draft.cervixState?.status}, note: ${draft.cervixState?.note}",
    );
    return Scaffold(
      backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 24,
            children: [
              HeaderWidget(),
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
      ),
    );
  }
}
