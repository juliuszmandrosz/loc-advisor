import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loc_advisor/themes/theme_extensions.dart';

class LocAdvisorTextInput extends HookWidget {
  final String value;
  final Function(String) onChanged;
  final VoidCallback onValidate;
  final bool isFormValid;
  final String? errorText;
  final String? hintText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  const LocAdvisorTextInput({
    required this.value,
    required this.onChanged,
    required this.onValidate,
    required this.isFormValid,
    required this.errorText,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: value);
    final focusNode = useFocusNode();
    final isPasswordField = keyboardType == TextInputType.visiblePassword;
    final isObscured = useState(isPasswordField);

    useEffect(() {
      focusNode.addListener(() {
        if (!focusNode.hasFocus) {
          onValidate();
        }
      });
      return null;
    }, [focusNode]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          focusNode: focusNode,
          controller: textController,
          onChanged: onChanged,
          obscureText: isPasswordField ? isObscured.value : false,
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    color: context.primary,
                  )
                : null,
            suffixIcon: isPasswordField
                ? IconButton(
                    icon: Icon(
                      isObscured.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      isObscured.value = !isObscured.value;
                    },
                  )
                : null,
          ),
        ),
        if (!isFormValid && errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8),
            child: Text(
              errorText!,
              style: context.bodyMedium.copyWith(color: context.error),
            ),
          ),
      ],
    );
  }
}
