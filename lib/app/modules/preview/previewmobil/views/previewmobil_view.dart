import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';

import 'package:get/get.dart';

import '../controllers/previewmobil_controller.dart';

class PreviewmobilView extends GetView<PreviewmobilController> {
  const PreviewmobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Detail Mobil'),
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
                'Detail mobil Honda Jazz',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 15),
                  // MoMobView(),
                  // SizedBox(height: 5),
                  // MoMobView(),
            ],
            
          ),
        )
        
      ),
    );
  }
}
