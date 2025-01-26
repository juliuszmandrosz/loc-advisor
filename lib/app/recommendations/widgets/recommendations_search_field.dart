import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loc_advisor/extensions/build_context_extensions.dart';

class RecommendationsSearchField extends HookWidget {
  final Future<void> Function(String destination) onSubmit;
  final String hintText;
  final String text;

  const RecommendationsSearchField({
    required this.onSubmit,
    required this.hintText,
    this.text = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    useEffect(() {
      textController.text = text;
      return null;
    }, [text]);
    final destination = useListenable(textController).value.text;
    return TextField(
      controller: textController,
      onSubmitted: (phrase) async => onSubmit(phrase),
      decoration: InputDecoration(
        hintMaxLines: 1,
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: destination.isEmpty
            ? null
            : InkWell(
                onTap: () async {
                  textController.clear();
                  context.unfocus();
                  await onSubmit('');
                },
                child: const Icon(Icons.clear),
              ),
      ),
    );
  }
}
