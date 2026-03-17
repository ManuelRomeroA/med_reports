import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/models/models.dart';
import 'package:med_reports/components/general/selected_button.dart';

class StateSelector<T> extends StatefulWidget {
  final String titulo;
  final ReportDraft draft;
  final T object;

  const StateSelector({
    super.key,
    required this.titulo,
    required this.draft,
    required this.object,
  });

  @override
  State<StateSelector> createState() => _StateSelectorState();
}

class _StateSelectorState extends State<StateSelector> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(20),
      height: 210,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              widget.titulo,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: StateValue.values
                .where((value) => value != StateValue.unknown)
                .map((value) {
                  return Expanded(
                    child: SelectedButton(
                      label: value.toString(),
                      selected: value == widget.object.status,
                      selectedColor: theme.colorScheme.primary,
                      onTap: () {
                        widget.object.status = value;
                        if (value == StateValue.normal) {
                          widget.object.note = null;
                        }
                        setState(() {});
                      },
                    ),
                  );
                })
                .toList(),
          ),
          if (widget.object.status == StateValue.other) ...[
            const SizedBox(height: 12),
            ThemedTextInput(
              value: widget.object.note ?? "",
              labelText: "Describa hallazgo...",
              onChanged: (value) {
                if (widget.object.note == null) widget.object.note = "";
                widget.object.note = value;
                setState(() {});
              },
            ),
          ],
        ],
      ),
    );
  }
}
