import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_elevated_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 113.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "SIGN IN",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 51.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Full Name",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 58.v),
              Divider(
                indent: 26.h,
                endIndent: 38.h,
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "Password",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 64.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 30.h,
                  endIndent: 34.h,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "SIGN IN",
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 58.h),
                  child: Text(
                    "Don’t have an  account! SIGN UP",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 96.v),
            ],
          ),
        ),
      ),
    );
  }
}
