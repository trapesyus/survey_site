import 'package:flutter/material.dart';
import 'package:yagmur/core/constants/color_constants.dart';

import '../widgets/text_widget.dart';

extension SnackBarExtension on BuildContext {
  snackBarExtension({required String content}) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        content: Center(
            child: CustomText(
          text: content,
          color: ColorConstants.whiteColor,
        )),
        backgroundColor: ColorConstants.buttonColor,
        duration: const Duration(seconds: 2),
        elevation: 0,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      ));
}
