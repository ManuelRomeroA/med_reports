import 'package:flutter/material.dart';
import 'package:layrz_theme/layrz_theme.dart';
import 'package:med_reports/models/models.dart';
import 'package:med_reports/components/shared/selected_button.dart';

/// Generic widget for selecting and displaying a clinical state.
/// T must be a mutable @unfreezed model with [status] (StateValue) and [note] (String?) fields.
/// Supported types: VaginalStatus, CervicalStatus.
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
  State<StateSelector> createState() => _StateSelectorState<T>();
}

class _StateSelectorState<T> extends State<StateSelector<T>> {
  StateValue getStatus() {
    final obj = widget.object;
    if (obj is VaginalStatus) return obj.status;
    if (obj is CervicalStatus) return obj.status;
    return StateValue.unknown;
  }

  String? getNote() {
    final obj = widget.object;
    if (obj is VaginalStatus) return obj.note;
    if (obj is CervicalStatus) return obj.note;
    return null;
  }

  void setStatus(StateValue value) {
    final obj = widget.object;
    if (obj is VaginalStatus) obj.status = value;
    if (obj is CervicalStatus) obj.status = value;
  }

  void setNote(String? value) {
    final obj = widget.object;
    if (obj is VaginalStatus) obj.note = value;
    if (obj is CervicalStatus) obj.note = value;
  }

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
                      selected: value == getStatus(),
                      selectedColor: theme.colorScheme.primary,
                      onTap: () {
                        setStatus(value);
                        if (value == StateValue.normal) {
                          setNote(null);
                        }
                        setState(() {});
                      },
                    ),
                  );
                })
                .toList(),
          ),
          if (getStatus() == StateValue.other) ...[
            const SizedBox(height: 12),
            ThemedTextInput(
              value: getNote() ?? "",
              labelText: "Describa hallazgo...",
              onChanged: (value) {
                setNote(value);
                setState(() {});
              },
            ),
          ],
        ],
      ),
    );
  }
}
