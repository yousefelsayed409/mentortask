import 'package:flutter/material.dart';
import 'package:mentortask/feature/auth/forgot_password/forgot_password_screen.dart';
import 'package:mentortask/feature/auth/otp/otp_screen.dart';
import 'package:mentortask/feature/auth/signIn/sign_in_screen.dart';
import 'package:mentortask/feature/auth/signUp/sign_up_screen.dart';

abstract class AppRoute {
  static const signInScreen = 'SignInScreen';
  static const signUpScreen = 'SignUpScreen';
  static const forgetpasswordScreen = 'ForgotPasswordScreen';
  static const otpScreen = 'OtpScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case forgetpasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case otpScreen:
        return MaterialPageRoute(builder: (_) =>  OtpScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defind${settings.name}'),
                  ),
                ));
    }
  }
}
