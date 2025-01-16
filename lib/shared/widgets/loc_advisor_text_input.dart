import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LocAdvisorTextInput extends HookWidget {
  final String value;
  final Function(String) onChanged;
  final VoidCallback onValidate;
  final bool isFormValid;
  final String? errorText;
  final String? hintText;
  final IconData? prefixIcon;

  const LocAdvisorTextInput({
    required this.value,
    required this.onChanged,
    required this.onValidate,
    required this.isFormValid,
    required this.errorText,
    this.hintText,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: value);
    final focusNode = useFocusNode();
    useEffect(() {
      focusNode.addListener(() {
        if (!focusNode.hasFocus) {
          onValidate();
        }
      });
      return null;
    }, [focusNode]);

    return TextField(
      focusNode: focusNode,
      controller: textController,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        errorText: isFormValid ? null : errorText,
      ),
    );
  }
}
