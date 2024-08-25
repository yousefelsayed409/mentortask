import 'package:flutter/material.dart';
import 'package:mentortask/core/utils/app_colo.dart';
import 'package:mentortask/core/utils/app_text_style.dart';


import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.basic)),
        title: Text(
          "Forgot Password",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
