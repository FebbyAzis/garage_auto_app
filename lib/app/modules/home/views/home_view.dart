import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/admin/homeadmin/views/homeadmin_view.dart';
import 'package:garage_auto/app/modules/data/controller/auth_controller.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/list_kendaraan.dart';
import 'package:garage_auto/utils/widget/signout.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
//  final String email;
//   HomeView({
//     Key? key,
//     required this.email,
//   }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => authC.logout(),
           icon: Icon(Icons.logout),)
        ],
        
      ),
      body: Center(
         child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(height: 40),
                  ListKendaraan(),

                  SizedBox(height: 40),
                  SignOut(),

                  FloatingActionButton(onPressed:() {
                    Get.off(HomeadminView());
                  },)
              ],
              
            ),
         ),
      ),
    );
  }
}
