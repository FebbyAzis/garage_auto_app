import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/button.global.dart';
import 'package:garage_auto/utils/widget/text.form.global.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
   RegisterView({Key? key,}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();


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
                const SizedBox(height: 10),
                // confirm password input
                TextFormGlobal(
                  controller: confirmpasswordController,
                  textInputType: TextInputType.text,
                  obscure: true,
                  text: 'Confirm Password',
                ),
                

                const SizedBox(height: 20),
                
                InkWell(
      onTap: () {
        Get.toNamed('/login');
      },
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
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
                
                //  Button
                // ElevatedButton(
                //   onPressed: () {
                //     Get.toNamed('/home');
                //     // print('home');
                //   },
                //   child: Text('Login'),
                // ),
                // ButtonGlobal(),
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
                    onPressed: () => ('home'),
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
              'Already have an account?',
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/login');
              },
              child: Text(
                'Login',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

