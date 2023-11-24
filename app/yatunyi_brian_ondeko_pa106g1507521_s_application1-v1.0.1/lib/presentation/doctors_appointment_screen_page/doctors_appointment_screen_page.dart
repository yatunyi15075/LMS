import '../doctors_appointment_screen_page/widgets/doctorlist_item_widget.dart';
import '../doctors_appointment_screen_page/widgets/eightyfour_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DoctorsAppointmentScreenPage extends StatelessWidget {
  const DoctorsAppointmentScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildAvailableDoctors(context),
              Container(
                height: 442.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _buildDoctorList(context),
                            SizedBox(
                              width: 261.h,
                              child: Divider(
                                endIndent: 6.h,
                              ),
                            ),
                            SizedBox(
                              width: 261.h,
                              child: Divider(
                                endIndent: 6.h,
                              ),
                            ),
                            SizedBox(
                              width: 261.h,
                              child: Divider(
                                endIndent: 6.h,
                              ),
                            ),
                            SizedBox(height: 110.v),
                            SizedBox(
                              width: 255.h,
                              child: Divider(),
                            ),
                            SizedBox(height: 110.v),
                            SizedBox(
                              width: 261.h,
                              child: Divider(
                                endIndent: 6.h,
                              ),
                            ),
                            SizedBox(height: 110.v),
                            SizedBox(height: 15.v),
                            _buildMedicine(context),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 26.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 59.v,
                              width: 60.h,
                              margin: EdgeInsets.only(bottom: 11.v),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(
                                  30.h,
                                ),
                              ),
                            ),
                            Container(
                              height: 63.v,
                              width: 75.h,
                              margin: EdgeInsets.only(
                                left: 1.h,
                                top: 7.v,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 45.v,
                                      width: 47.h,
                                      margin: EdgeInsets.only(right: 10.h),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          23.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 11.h),
                                      child: Text(
                                        "Health AI",
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 11.h),
                                      child: Text(
                                        "Health AI",
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHealthcheckerIcon,
                                    height: 63.v,
                                    width: 75.h,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 7.v,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 45.v,
                                    width: 47.h,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onPrimary,
                                      borderRadius: BorderRadius.circular(
                                        23.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  SizedBox(
                                    height: 13.v,
                                    width: 33.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Profile",
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Profile",
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45.v,
                                  width: 47.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(
                                      23.h,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 45.v,
                                  width: 47.h,
                                  margin: EdgeInsets.only(left: 26.h),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(
                                      23.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 13.v,
                                  width: 66.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Appointment",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Appointment",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 13.v,
                                  width: 46.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Medicine",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Medicine",
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvailableDoctors(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
          height: 59.v,
          leadingWidth: 48.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.img574496RemovebgPreview,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 19.v,
              bottom: 13.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Doctor’s List",
            margin: EdgeInsets.only(bottom: 40.v),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                left: 28.h,
                top: 4.v,
                right: 28.h,
              ),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder27,
              ),
              child: Column(
                children: [
                  SizedBox(height: 1.v),
                  AppbarImage(
                    imagePath: ImageConstant.img3dRenderLittl,
                    margin: EdgeInsets.only(right: 1.h),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 31.v),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            right: 36.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "Category",
                  style: CustomTextStyles.labelLarge12,
                ),
              ),
              SizedBox(
                height: 31.v,
                width: 48.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "See All",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowForwardA19x31,
                      height: 19.v,
                      width: 31.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.v),
        SizedBox(
          height: 77.v,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 8.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 7.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return EightyfourItemWidget();
            },
          ),
        ),
        SizedBox(height: 39.v),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Available Doctors",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDoctorList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 14.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return DoctorlistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildMedicine(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 93.v,
            width: 100.h,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseUpHealth64x60,
              height: 64.v,
              width: 60.h,
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            width: 63.h,
            margin: EdgeInsets.only(
              left: 69.h,
              top: 17.v,
              bottom: 27.v,
            ),
            child: Text(
              "Dr.Kamau\n\nDentist",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
