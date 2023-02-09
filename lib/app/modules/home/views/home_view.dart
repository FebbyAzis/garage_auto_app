import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/list_kendaraan.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Home'),
        centerTitle: true,
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
              ],
              
            ),
         ),
      ),
    );
  }
}
