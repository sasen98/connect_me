import 'package:connect_me/widgets/custom_button.dart';
import 'package:connect_me/widgets/custom_text_field_widget.dart';
import 'package:connect_me/widgets/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ScreenPadding(
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              120.verticalSpace,
              Icon(
                Icons.connect_without_contact_sharp,
                size: 140.r,
              ),
              10.verticalSpace,
              Text(
                "Connect Thrive and Grow",
                style: TextStyle(fontSize: 25.sp),
              ),
              20.verticalSpace,
              const CustomTextFieldWidget(
                hintText: "Username",
              ),
              10.verticalSpace,
              const CustomTextFieldWidget(
                isPassword: true,
                hintText: "Password",
              ),
              15.verticalSpace,
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text("Forgot Password?",
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
              10.verticalSpace,
              CustomButton(
                buttonText: "Login",
                onTap: () {},
              ),
              10.verticalSpace,
              InkWell(
                onTap: () {},
                child: const Text("Dont have an account? SignUp instead."),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
