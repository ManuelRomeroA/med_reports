import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/components/shared/header.dart';
import 'package:med_reports/views/eco_pelvico/eco_pelvico_view.dart';
import 'package:med_reports/views/eco_morfogenetico/eco_morfogenetico_view.dart';

/// App-level shell: doctor brand header above a two-tab view.
/// Tabs:
///   1. Eco Pélvico — fully functional (EcoPelvicoView).
///   2. Eco Morfogenético — placeholder (Phase 1); will be wired in Phase 3.
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // App-level brand header — always visible above the tab bar
          const HeaderWidget(),

          // Tab navigation
          Expanded(
            child: ThemedTabView(
              padding: EdgeInsets.zero,
              tabs: [
                ThemedTab(
                  labelText: 'Eco Pélvico',
                  leadingIcon: Icons.circle_outlined,
                  child: const EcoPelvicoView(),
                ),
                ThemedTab(
                  labelText: 'Eco Morfogenético',
                  leadingIcon: Icons.pregnant_woman_outlined,
                  child: const EcoMorfogeneticoView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
