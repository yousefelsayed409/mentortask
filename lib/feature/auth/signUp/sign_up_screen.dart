import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentortask/core/utils/app_colo.dart';
import 'package:mentortask/core/utils/app_text_style.dart';
import 'package:mentortask/core/widget/constants.dart';


import '../signIn/sign_in_screen.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SignInScreen();
              }));
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.basic)),
        title: Text(
          "Sign Up",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      const Text("Register Account", style: headingStyle),
                      const SizedBox(height: 10),
                      const Text(
                        "Complete your details or continue \nwith social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.h),
                      const SignUpForm(),
                      SizedBox(height: 20.h),
                    ],
                  ),
                )
          ),
        ),
      );
    
  }
}
