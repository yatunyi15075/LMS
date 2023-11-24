import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/doctors_appointment_screen_page/doctors_appointment_screen_page.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DoctorsAppointmentScreenContainerScreen extends StatelessWidget {
  DoctorsAppointmentScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.doctorsAppointmentScreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
