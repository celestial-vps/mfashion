import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

Widget celestialElevatedButton(
        Color color,
        Color borderColor,
        Color textColor,
        GestureTapCallback onPressed,
        String text,
        TextStyle textStyle,
        double width,
        double height,
        double widthBorder) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: color,
          // onPrimary: textColor, //
          textStyle: textStyle,
          side: BorderSide(
            width: widthBorder,
            color: borderColor,
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(30.0),
          // )
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );

Widget celestialButtonLabel(
  GestureTapCallback onPressed,
  String text,
  TextStyle textStyle,
) =>
    TextButton(
      // onTap: onTap,
      onPressed: onPressed,
      child: celestialLabel(text, textStyle, TextAlign.center),
    );

Widget celestialButtonIcon(GestureTapCallback onPressed, final double size,
        final String svgSrc, final Color color,
        [bool isTint = false]) =>
    GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: size,
        height: size,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: (4.0 / 1000) * SizeConfig.screenHeight),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: celestialIcon(svgSrc, color, isTint)),
        ),
      ),
    );
