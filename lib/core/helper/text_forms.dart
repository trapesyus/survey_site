import 'package:flutter/material.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';

import '../widgets/label_text_widget.dart';
import '../widgets/textfield_widget.dart';

class TextForms extends StatelessWidget {
  final String question;
  final TextEditingController questionController;
  final bool isNumber;

  const TextForms({
    super.key,
    required this.question,
    required this.questionController,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLabelText(label: question, isColorNotWhite: true)
            .getPaddingOnly(context: context, left: 0.02),
        CustomTextField(
          isNumber: isNumber,
          fillColor: true,
          sizeTop: 0.02,
          sizeLeft: 0.02,
          sizeRight: 0.02,
          horizontalHeight: 0.02,
          verticalHeight: 0.01,
          controller: questionController,
        )
      ],
    );
  }
}
