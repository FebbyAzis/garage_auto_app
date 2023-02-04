import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/register/views/register_view.dart';
import 'package:garage_auto/app/modules/splash/views/splash_view.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:get/get.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({ Key?key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
      
    );
  }
}