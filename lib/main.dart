import 'package:auth/Common/colors..dart';
import 'package:auth/Common/dimensions.dart';
import 'package:auth/Routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (BuildContext context, Widget? child) =>
          Dimensions(child: child!),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.goToSignInScreen(),
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.textColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
