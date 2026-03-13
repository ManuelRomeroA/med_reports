import 'package:flutter/material.dart';
import 'package:med_reports/components/bladder.dart';
import 'package:med_reports/components/datos_paciente_widget.dart';
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
    draft = ReportDraft(
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
      // Otros campos según corresponda
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 24,
            children: [
              HeaderWidget(),
              DatosPacienteWidget(draft: draft),
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
                        UteroWidget(),
                        NodulesWidget(),
                        Row(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .center,
                          spacing: 24,
                          children: [
                            Expanded(
                              child: OvaryWidget(
                                titulo: "Ovario Derecho",
                                ovary: draft.rightOvary,
                                onChanged: (value) {
                                  draft.rightOvary = value;
                                },
                              ),
                            ),
                            Expanded(
                              child: OvaryWidget(
                                titulo: "Ovario Izquierdo",
                                ovary: draft.leftOvary,
                                onChanged: (value) {
                                  draft.leftOvary = value;
                                },
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
                              child: StateSelector(titulo: "ESTADO VAGINAL"),
                            ),
                            Expanded(
                              child: StateSelector(titulo: "CUELLO UTERINO"),
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
