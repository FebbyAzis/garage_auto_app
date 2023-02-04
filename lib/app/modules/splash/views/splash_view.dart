import 'dart:async';
import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/login/views/login_view.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.to(LoginView());
    });

    
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Image.asset(
        'assets/images/primary_logo.png',
        height: 100,),
      ),
    );
  }
}