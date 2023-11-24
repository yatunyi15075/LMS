import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  const HomepageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          Container(
            height: 115.adaptSize,
            width: 115.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder57,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgDoctorIcon1,
              height: 89.adaptSize,
              width: 89.adaptSize,
              alignment: Alignment.centerRight,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            "Doctor’s Appointment",
            style: CustomTextStyles.labelLarge12,
          ),
        ],
      ),
    );
  }
}
