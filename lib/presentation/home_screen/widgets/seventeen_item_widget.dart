import '../controller/home_controller.dart';
import '../models/seventeen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class SeventeenItemWidget extends StatelessWidget {
  SeventeenItemWidget(
    this.seventeenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventeenItemModel seventeenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 232.v,
        width: 412.h,
        decoration: AppDecoration.fillRed,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPexelsPhotoBy,
              height: 232.v,
              width: 412.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 5.v,
                margin: EdgeInsets.only(bottom: 16.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: theme.colorScheme.onPrimary,
                    dotColor: theme.colorScheme.onPrimary,
                    dotHeight: 5.v,
                    dotWidth: 5.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
