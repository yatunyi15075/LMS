import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/home_page_screen/home_page_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/doctors_appointment_screen_container_screen/doctors_appointment_screen_container_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/book_appoiintment_screen/book_appoiintment_screen.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String doctorsAppointmentScreenPage =
      '/doctors_appointment_screen_page';

  static const String doctorsAppointmentScreenContainerScreen =
      '/doctors_appointment_screen_container_screen';

  static const String bookAppoiintmentScreen = '/book_appoiintment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    homePageScreen: (context) => HomePageScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    doctorsAppointmentScreenContainerScreen: (context) =>
        DoctorsAppointmentScreenContainerScreen(),
    bookAppoiintmentScreen: (context) => BookAppoiintmentScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
