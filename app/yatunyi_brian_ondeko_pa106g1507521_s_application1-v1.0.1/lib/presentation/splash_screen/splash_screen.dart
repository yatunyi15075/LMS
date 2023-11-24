import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgCodeheal3RemovebgPreview,
                height: 181.v,
                width: 390.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
