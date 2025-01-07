import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (2 / 100) * SizeConfig.screenHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: (16 / 100) * SizeConfig.screenHeight,
              ),
              celestialImageLocal(
                  AppImage.success,
                  (16 / 100) * SizeConfig.screenHeight,
                  (16 / 100) * SizeConfig.screenHeight),
              SizedBox(
                height: (1 / 100) * SizeConfig.screenHeight,
              ),
              celestialLabel("Payment Sucessful", AppStyle.label10BlackBold,
                  TextAlign.center),
              SizedBox(
                height: (1 / 100) * SizeConfig.screenHeight,
              ),
              Flexible(
                  child: celestialLabel(
                      "Your order will be ready in 5 days, including shipping, more details and options for tracking will be sent to your email Thanks!!!",
                      AppStyle.label18grey,
                      TextAlign.center)),
              SizedBox(
                height: (1 / 100) * SizeConfig.screenHeight,
              ),
              celestialLabel(
                  "Thanks!!!", AppStyle.label18grey, TextAlign.center),
              SizedBox(
                height: (4 / 100) * SizeConfig.screenHeight,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: AppColor.pinkColor,
                ),
                child: celestialButtonLabel(
                    () {}, "Continue Shopping", AppStyle.label14BWhiteBold),
              ),
              SizedBox(
                height: (8 / 100) * SizeConfig.screenHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
