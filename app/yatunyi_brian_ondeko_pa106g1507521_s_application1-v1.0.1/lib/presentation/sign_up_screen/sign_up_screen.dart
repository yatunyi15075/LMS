import 'package:flutter/material.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/core/app_export.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_elevated_button.dart';
import 'package:yatunyi_brian_ondeko_pa106g1507521_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGN UP",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 64.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "Full Name",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 39.v),
              SizedBox(
                height: 1.v,
                width: 275.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 275.h,
                        child: Divider(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 275.h,
                        child: Divider(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Mobile Number",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 47.v),
              Divider(
                indent: 32.h,
                endIndent: 30.h,
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Email Address",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 55.v),
              Divider(
                indent: 35.h,
                endIndent: 27.h,
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Password",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 58.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 30.h,
                ),
                child: CustomTextFormField(
                  controller: editTextController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 55.v),
              CustomElevatedButton(
                text: "SIGN UP",
              ),
              SizedBox(height: 15.v),
              Text(
                "Have an account! SIGN IN",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
