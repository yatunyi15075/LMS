import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          padding: EdgeInsets.all(12.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 812.v,
                  width: 357.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCartoonAfrican,
                        height: 812.v,
                        width: 357.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 266.h,
                          margin: EdgeInsets.only(bottom: 53.v),
                          child: Text(
                            "CONNECT WITH DOCTORS \n                MORE EASILY",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 76.v,
                  width: 80.h,
                  margin: EdgeInsets.only(bottom: 128.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 76.v,
                          width: 80.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(
                              40.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowForwardA,
                        height: 44.v,
                        width: 56.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
