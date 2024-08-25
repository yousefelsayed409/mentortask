import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentortask/core/routes/app_route.dart';

void main() {
  runApp(const MentorTask());
}

class MentorTask extends StatelessWidget {
  const MentorTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  MaterialApp(
        //  home: SignInView(),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.signInScreen,
          onGenerateRoute: AppRoute.generateRoute,
        );
      },
    );

    // return  Sizer(
    //   builder: (context, orientation, deviceType) {
    //     return MaterialApp(
    //       theme: theme,
    //       debugShowCheckedModeBanner: false,
    //       // home: Tests(),
    //       initialRoute: AppRoute.splashViewtwo,
    //       onGenerateRoute: AppRoute.generateRoute,
    //     );
    //   },
    // );
  }
}
