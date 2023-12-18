import '../home_screen/widgets/productlisting_item_widget.dart';
import '../home_screen/widgets/seventeen_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/productlisting_item_model.dart';
import 'models/seventeen_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_title.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 412.h,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildStackNineteen(),
                SizedBox(height: 51.v),
                _buildColumnFrame(),
                Spacer(),
                SizedBox(
                  width: 108.h,
                  child: Divider(
                    color: appTheme.gray900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackNineteen() {
    return SizedBox(
      height: 232.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 232.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount:
                  controller.homeModelObj.value.seventeenItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                SeventeenItemModel model = controller
                    .homeModelObj.value.seventeenItemList.value[index];
                return SeventeenItemWidget(
                  model,
                );
              },
            ),
          ),
          CustomAppBar(
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_get_50_off".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnFrame() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.h),
      child: Column(
        children: [
          Text(
            "msg_what_are_you_looking".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 30.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 32.v,
                );
              },
              itemCount: controller
                  .homeModelObj.value.productlistingItemList.value.length,
              itemBuilder: (context, index) {
                ProductlistingItemModel model = controller
                    .homeModelObj.value.productlistingItemList.value[index];
                return ProductlistingItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
