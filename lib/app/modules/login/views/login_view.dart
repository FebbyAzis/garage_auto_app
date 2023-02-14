import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/data/controller/auth_controller.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/button.global.dart';
import 'package:garage_auto/utils/widget/text.form.global.dart';
import 'package:get/get.dart';
import '';
import 'package:ionicons/ionicons.dart';

class LoginView extends StatelessWidget {
  final authC = Get.find<AuthController>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/secondary_logo.png',
                    height: 100,
                    width: 250,
                  ),
                ),
                const SizedBox(height: 50),
                Text('Login to your account',
                    style: TextStyle(
                      color: GlobalColors.textxColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 20),
                // input email
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                  
                ),
                const SizedBox(height: 10),
                // password input
                TextFormGlobal(
                  controller: passwordController,
                  textInputType: TextInputType.text,
                  obscure: true,
                  text: 'Password', 
                ),
                const SizedBox(height: 15),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: GlobalColors.mainColor,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                // ElevatedButton(onPressed: () => authC.login(emailController.text, passwordController.text), 
                // child: Text("Login"),
                
                //  Button
                // ElevatedButton(
                //   onPressed: () {
                //     Get.toNamed('/home');
                //     // print('home');
                //   },
                //   child: Text('Login'),
                // ),
                ButtonGlobal(),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Or sign with',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: FloatingActionButton.extended(
                    backgroundColor: GlobalColors.mainColor,
                    onPressed: () => authC.signInWithGoogle(),
                    label: const Text(
                      'Sign In With  Google',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    icon: const Icon(
                      Ionicons.logo_google,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/register');
              },
              child: Text(
                'Register',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
