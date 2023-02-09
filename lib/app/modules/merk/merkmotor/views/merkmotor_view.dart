import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/merk/merkmotor.dart';

import 'package:get/get.dart';

import '../controllers/merkmotor_controller.dart';

class MerkmotorView extends GetView<MerkmotorController> {
  const MerkmotorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Brand Motor'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List brand kendaraan motor',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 15),
                  MTView(),
                  SizedBox(height: 5),
                  MTView(),
            ],
            
          ),
        )
        
      ),
    );
  }
}
