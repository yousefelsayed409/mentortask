import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentortask/core/utils/app_text_style.dart';
import 'package:mentortask/core/widget/dont_have_an_account.dart';
import 'package:mentortask/core/widget/social_card.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: (20.h)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 7),
                      Text("Welcome Back ! ", style: AppStyles.textStyle28),
                      SizedBox(height: 12.h),
                      const Text(
                        "Sign in with your email and password  \nor continue with social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 35.h),
                      const SignForm(),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalCard(
                            imageAseetss:
                                Image.asset('assets/Icons/google.png'),
                            press: () {},
                          ),
                          SocalCard(
                            imageAseetss:
                                Image.asset('assets/Icons/facebook.png'),
                            press: () {},
                          ),
                          SocalCard(
                            imageAseetss:
                                Image.asset('assets/Icons/twitter (1).png'),
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const DontHaveAnAcountWidget(To: ' SignUp'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
    
  }
}
