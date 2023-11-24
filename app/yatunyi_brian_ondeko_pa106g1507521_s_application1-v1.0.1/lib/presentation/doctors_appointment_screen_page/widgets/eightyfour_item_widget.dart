import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class EightyfourItemWidget extends StatelessWidget {
  const EightyfourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.v,
      width: 73.h,
      margin: EdgeInsets.only(bottom: 4.v),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 71.adaptSize,
              width: 71.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img508RemovebgPreview,
            height: 59.v,
            width: 72.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
