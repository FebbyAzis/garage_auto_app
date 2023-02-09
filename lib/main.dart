import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/data/controller/auth_controller.dart';
import 'package:garage_auto/app/modules/home/views/home_view.dart';
import 'package:garage_auto/app/modules/register/views/register_view.dart';
import 'package:garage_auto/app/modules/splash/views/splash_view.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:garage_auto/firebase_options.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';



Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
    // options: DefaultFirebaseOption.currentPlatform,
    Get.put(AuthController(), permanent: true);
  runApp(
    StreamBuilder<User?>(
      stream: FirebaseAuth.instance
      .authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes,
    );
      },)
  );
}