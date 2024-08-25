import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentortask/core/utils/app_colo.dart';
import 'package:mentortask/core/widget/constants.dart';
import 'package:mentortask/core/widget/csutom_elevated_button.dart';
import 'package:mentortask/core/widget/csutom_form_field.dart';
import 'package:mentortask/core/widget/form_error.dart';
import 'package:mentortask/feature/auth/forgot_password/forgot_password_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  bool? remember = false;


  final List<String?> errors = [];

  get kPrimaryColor => null;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
           CustomFormField(
            labelText: 'Email',
            hintText: 'Enter your email',
             validator: (value) {
                if (value!.isEmpty) {
                  addError(error: knameNullError);
                  return "";
                }
                return null;
              },
          ),
          SizedBox(height: 30.h),
           CustomFormField(
            obscureText: true,
            labelText: "Password",
            hintText: "Enter your password",
             validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kPassNullError);
                  return "";
                } else if (value.length < 8) {
                  addError(error: kShortPassError);
                  return "";
                }
                return null;
              },
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: AppColors.black,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const ForgotPasswordScreen();
                })),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: 20.h),
           CustomElevatedButton(
            
            text: 'Login',
            height: 50.h,
             onPressed: () {
                if (_formKey.currentState!.validate()) {
              
                } }
          ),
        ],
      ),
    );
  }
}
  
  

