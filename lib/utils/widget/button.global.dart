import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:garage_auto/app/modules/services/auth_service.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:get/get.dart';
import 'package:garage_auto/app/modules/data/controller/auth_controller.dart';

class ButtonGlobal extends StatelessWidget {
  final authC = Get.find<AuthController>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => authC.login(emailController.text, passwordController.text),      
                  child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ]),
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
