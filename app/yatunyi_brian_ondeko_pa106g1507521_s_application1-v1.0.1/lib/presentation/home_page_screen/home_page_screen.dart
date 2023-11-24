import '../home_page_screen/widgets/homepage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/doctors_appointment_screen_page/doctors_appointment_screen_page.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_bottom_bar.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 51.v),
              _buildThirtyFive(context),
              SizedBox(height: 74.v),
              _buildHomepage(context),
              SizedBox(height: 96.v),
              _buildView(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Hello CodeHeal",
        margin: EdgeInsets.only(
          left: 22.h,
          top: 9.v,
          bottom: 31.v,
        ),
      ),
      actions: [
        Container(
          height: 60.v,
          width: 61.h,
          margin: EdgeInsets.symmetric(horizontal: 36.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  margin: EdgeInsets.only(
                    right: 6.h,
                    bottom: 5.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      27.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img3dRenderLittl,
                height: 60.v,
                width: 61.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Container(
      width: 346.h,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgSearchIcon1,
            height: 46.v,
            width: 42.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomepage(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 48.h,
      mainAxisSpacing: 48.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return HomepageItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 14.h,
          right: 29.h,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
