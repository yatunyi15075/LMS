import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/doctors_appointment_screen_page/doctors_appointment_screen_page.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_bottom_bar.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_elevated_button.dart';

class BookAppoiintmentScreen extends StatelessWidget {
  BookAppoiintmentScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37.v),
              CustomImageView(
                imagePath: ImageConstant.img574496RemovebgPreview,
                height: 26.v,
                width: 28.h,
                margin: EdgeInsets.only(left: 1.h),
              ),
              SizedBox(height: 19.v),
              _buildCloseUpHealthSection(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 194.h,
                  child: Text(
                    "Dr. John Kivei \nDentist From Tumaini Hospital",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 67.v),
              _buildBookAppointmentSection(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 38.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "MON",
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "TUE",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text(
                        "WED",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "THUR",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "FRI",
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.v),
                        child: Text(
                          "1",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "2",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "3",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "4",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.v),
                        child: Text(
                          "5",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 87.v),
              CustomElevatedButton(
                height: 68.v,
                text: "Make Appointment",
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 11.h,
                ),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: theme.textTheme.titleMedium!,
                alignment: Alignment.center,
              ),
              SizedBox(height: 24.v),
              _buildNinetyEightSection(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            right: 9.h,
          ),
          child: _buildBottomBarSection(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCloseUpHealthSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 44.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgCloseUpHealth,
            height: 279.v,
            width: 255.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAppointmentSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Book Appointmet",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "November",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEightSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 18.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Column(
              children: [
                Container(
                  width: 120.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    right: 5.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(
                            23.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 128.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(
                        height: 13.v,
                        width: 46.h,
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
                ),
              ],
            ),
          ),
          Container(
            height: 59.v,
            width: 60.h,
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 12.v,
            ),
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
                  imagePath: ImageConstant.imgHealthcheckerIcon,
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
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Appointmenticons:
        return AppRoutes.doctorsAppointmentScreenPage;
      case BottomBarEnum.Medicineicon1:
        return "/";
      case BottomBarEnum.Homeicon11:
        return "/";
      case BottomBarEnum.Profileicon1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.doctorsAppointmentScreenPage:
        return DoctorsAppointmentScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
