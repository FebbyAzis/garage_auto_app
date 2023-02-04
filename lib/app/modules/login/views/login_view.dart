import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/login/controllers/login_controller.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/Loginpage.dart';
import 'package:garage_auto/utils/widget/text.form.global.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoginPage(emailController: emailController, passwordController: passwordController);
  }
}
