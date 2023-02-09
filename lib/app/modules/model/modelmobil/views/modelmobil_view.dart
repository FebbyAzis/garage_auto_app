import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/Model/modelmobil.dart';

import 'package:get/get.dart';

import '../controllers/modelmobil_controller.dart';

class ModelmobilView extends GetView<ModelmobilController> {
  const ModelmobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Model Mobil'),
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
                'List jenis model kendaraan mobil',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 15),
                  MoMobView(),
                  SizedBox(height: 5),
                  MoMobView(),
            ],
            
          ),
        )
        
      ),
    );
  }
}
