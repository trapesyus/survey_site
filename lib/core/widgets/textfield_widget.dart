// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yagmur/core/extensions/size_extension.dart';

import '../constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  String? suffixText;
  String? label;

  Function? isIconOnTap;
  bool isIconTap;
  bool isIcon;
  bool isItalic;
  bool labelStyle;
  bool fillColor;
  bool suffixStyle;
  bool hintTextStyle;
  bool passwordType;
  bool isBold;
  bool isUnderline;

  double fontSize;
  double sizeTop;
  double sizeBottom;
  double sizeLeft;
  double sizeRight;
  int inputFormatters;
  bool textAlignCenter;
  double verticalHeight;
  double horizontalHeight;
  bool isNumber;

  TextEditingController? controller;

  CustomTextField(
      {super.key,
      this.isIconTap = false,
      this.inputFormatters = 0,
      this.isIconOnTap,
      this.isIcon = false,
      this.isNumber = false,
      this.isUnderline = false,
      this.fontSize = 16,
      this.isBold = false,
      this.isItalic = false,
      this.passwordType = false,
      this.controller,
      this.fillColor = false,
      this.hintText,
      this.hintTextStyle = false,
      this.suffixStyle = false,
      this.suffixText,
      this.label,
      this.labelStyle = false,
      this.sizeBottom = 0.016,
      this.sizeLeft = 0,
      this.sizeRight = 0,
      this.sizeTop = 0,
      this.textAlignCenter = false,
      this.verticalHeight = 0.05,
      this.horizontalHeight = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: context.getSizeHeight(size: sizeTop),
            bottom: context.getSizeHeight(size: sizeBottom),
            left: context.getSizeWidth(size: sizeLeft),
            right: context.getSizeWidth(size: sizeRight)),
        child: TextField(
          style: TextStyle(

              // color: Preferences.getThemeCheck()
              //     ? ColorConstants.blackColor
              //     : Colors.white,
              color: ColorConstants.blackColor,
              // fontFamily: TextFonts.fontChoice[Preferences.fontName],
              fontSize: fontSize,
              decoration: isUnderline ? TextDecoration.underline : null,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500),
          scrollPhysics: const BouncingScrollPhysics(),
          textAlign: textAlignCenter ? TextAlign.center : TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          controller: controller,
          obscureText: passwordType ? true : false,
          // cursorColor: Preferences.getThemeCheck()
          //     ? ColorConstants.blueColor
          //     : ColorConstants.whiteColor,
          cursorColor: ColorConstants.blackColor,
          maxLines: 1, // satırın aşağıya devam etmesi için max lines = null,
          inputFormatters: inputFormatters != 0
              ? [LengthLimitingTextInputFormatter(inputFormatters)]
              : isNumber
                  ? [FilteringTextInputFormatter.digitsOnly]
                  : null,
          onChanged: isIconTap
              ? (value) async {
                  if (isIconOnTap == null) () {};
                  await isIconOnTap!();
                }
              : null, //Bu fonksiyon sadece arama ikonuna tıklandığında değil, genel olarak her metinde arama yapması için kullanılıyor.
          keyboardType:
              isNumber ? TextInputType.number : TextInputType.multiline,

          decoration: InputDecoration(
              focusColor: ColorConstants.textFieldBackGroundColor,
              prefixIcon: isIcon
                  ? IconButton(
                      onPressed: () => isIconOnTap!() ?? () {},
                      icon: const Icon(CupertinoIcons.search),
                      color: ColorConstants.blackColor,
                    )
                  : null,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.only(
                top: context.getSizeHeight(size: verticalHeight),
                left: context.getSizeWidth(size: horizontalHeight),
                right: context.getSizeWidth(size: horizontalHeight),
                bottom: context.getSizeHeight(size: verticalHeight),
              ),
              alignLabelWithHint: false,
              labelText: label ?? '',
              labelStyle: labelStyle
                  ? TextStyle(
                      color: ColorConstants.textFieldHintTextColor,
                      fontFamily: GoogleFonts.poppins().fontFamily)
                  : null,
              suffixText: suffixText ?? '',
              suffixStyle: TextStyle(
                  color: ColorConstants.whiteColor,
                  fontFamily: GoogleFonts.poppins().fontFamily),
              hintStyle: hintTextStyle
                  ? TextStyle(
                      color: ColorConstants.blackColor,
                      fontFamily: GoogleFonts.poppins().fontFamily)
                  : null,
              hintText: hintText ?? '',
              filled: fillColor ? true : false,
              fillColor:
                  fillColor ? ColorConstants.textFieldBackGroundColor : null),
        ));
  }
}
