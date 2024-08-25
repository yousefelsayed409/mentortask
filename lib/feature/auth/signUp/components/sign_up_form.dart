import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentortask/core/widget/constants.dart';
import 'package:mentortask/core/widget/csutom_elevated_button.dart';
import 'package:mentortask/core/widget/csutom_form_field.dart';
import 'package:mentortask/core/widget/form_error.dart';
import 'package:mentortask/core/widget/social_card.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool remember = false;

  final List<String?> errors = [];

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomFormField(
              labelText: "Name",
              hintText: "Enter your Name",
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: knameNullError);
                  return "";
                }
                return null;
              },
            ),
            SizedBox(height: 15.h),
            CustomFormField(
              labelText: "Email",
              hintText: "Enter your Email",
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kEmailNullError);
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  addError(error: kInvalidEmailError);
                  return "";
                }
                return null;
              },
            ),
            SizedBox(height: 15.h),
            CustomFormField(
              labelText: "Phone",
              hintText: "Enter your Phone",
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kphoneNullError);
                  return "";
                } else if (value.length < 11) {
                  addError(error: kphoneNullError);
                  return "";
                }
                return null;
              },
            ),
            SizedBox(height: 15.h),
            CustomFormField(
              labelText: "Password",
              hintText: "Enter your Password",
              obscureText: true,
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
            SizedBox(height: 15.h),
            FormError(errors: errors),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  imageAseetss: Image.asset('assets/Icons/google.png'),
                  press: () {},
                ),
                SocalCard(
                  imageAseetss: Image.asset('assets/Icons/facebook.png'),
                  press: () {},
                ),
                SocalCard(
                  imageAseetss: Image.asset('assets/Icons/twitter (1).png'),
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomElevatedButton(
              height: 50.h,
              text: 'Sign Up',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle form submission
                }
              },
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

