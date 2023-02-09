import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:garage_auto/utils/widget/list_kendaraan.dart';
import 'package:garage_auto/utils/widget/merk/merkmobil.dart';

import 'package:get/get.dart';

import '../controllers/merkmobil_controller.dart';

class MerkmobilView extends GetView<MerkmobilController> {
  const MerkmobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text('Brand Mobil'),
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
                'List brand kendaraan mobil',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 15),
                  MBView(),
                  SizedBox(height: 5),
                  MBView(),
            ],
            
          ),
        )
        
      ),
      );
              
           
       
}
}
