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
    draft = ReportDraft();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Redibujando HomeView: $draft");
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
                              child: OvaryWidget(titulo: "Ovario Derecho"),
                            ),
                            Expanded(
                              child: OvaryWidget(titulo: "Ovario Izquierdo"),
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
