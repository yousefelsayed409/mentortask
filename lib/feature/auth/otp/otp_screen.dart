import 'package:flutter/material.dart';
import 'package:mentortask/core/utils/app_colo.dart';
import 'package:mentortask/core/utils/app_text_style.dart';

import 'widget/body.dart';



class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.basic)),
        title: Text(
          "OTP Verification",
          style: AppStyles.textStyle23,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
