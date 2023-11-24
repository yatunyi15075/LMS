import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DoctorlistItemWidget extends StatelessWidget {
  const DoctorlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 93.v,
            width: 100.h,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgBlackNurseMan,
              height: 91.v,
              width: 83.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 58.h,
              top: 13.v,
              bottom: 29.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. John Doe",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 18.v),
                Text(
                  "Dentist",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
