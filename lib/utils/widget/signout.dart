import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:garage_auto/app/routes/app_pages.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:get/get.dart';

class SignOut extends StatelessWidget {
  const SignOut({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector  (
          onTap: () {
            Get.defaultDialog(title: 'Sign Out',
            content: const Text('Are You Sure Want to Sign Out?'),
            cancel: ElevatedButton(
              onPressed:() => Get.back(),
               child: const Text('Cancel'),
               ),
               confirm: ElevatedButton(
              onPressed:() => Get.toNamed(Routes.LOGIN),
               child: const Text('Sign Out'),
               ),
            );
          },
            child: Row(
              children: const [
                 Text('Sign Out', style: TextStyle(color: AppColors.primaryText, fontSize: 15),),
                 SizedBox(
              width: 5,
            ),
             Icon(
              Icons.logout_outlined,
               color: AppColors.primaryText,
               size: 30,
               ),

              ],
            ),
          );
          
  }
}