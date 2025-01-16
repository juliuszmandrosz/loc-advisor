import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loc_advisor/shared/models/preferences_model.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class LocAdvisorChoiceChips extends StatelessWidget {
  final List<PreferencesModel> options;
  final ValueChanged<String> onToggle;
  final bool isFormValid;
  final String? errorText;

  const LocAdvisorChoiceChips({
    required this.options,
    required this.onToggle,
    required this.isFormValid,
    this.errorText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 12,
          children: options.map((option) {
            return ChoiceChip(
              avatar: FaIcon(
                option.icon,
                size: 16,
                color: option.isSelected ? context.onPrimary : context.primary,
              ),
              label: Text(option.label),
              selected: option.isSelected,
              onSelected: (_) => onToggle(option.label),
            );
          }).toList(),
        ),
        if (!isFormValid && errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 4.0),
            child: Text(
              errorText!,
              style: context.bodyMedium.copyWith(color: context.error),
            ),
          ),
      ],
    );
  }
}
