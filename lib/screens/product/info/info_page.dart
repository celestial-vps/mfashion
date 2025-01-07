import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        celestialLabel("Materials", AppStyle.label8White, TextAlign.left),
        celestialLabel(
            "AS SEEN IN REDBOOK! You'll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline.",
            AppStyle.label8White,
            TextAlign.left),
        celestialLabel(
            "WASH INSTRUCTION", AppStyle.label8White, TextAlign.left),
        celestialLabel(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Sed sit amet arcu aliquet, molestie justo at, auctor nunc.",
            AppStyle.label8White,
            TextAlign.left),
        celestialButtonLabel(() {}, "Add to Bag", AppStyle.label8White)
      ],
    );
  }
}
