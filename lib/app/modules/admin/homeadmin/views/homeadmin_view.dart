import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/admin/merkmobiladmin/views/merkmobiladmin_view.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/homeadmin_controller.dart';

class HomeadminView extends GetView<HomeadminController> {
  const HomeadminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeadminView'),
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
                const SizedBox(width: 30),
                Container(
                  padding: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          Text(
            'Pilih jenis kendaraan',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                   
                    alignment: Alignment.center,
                
                  ),
            onPressed: () {
              Get.off(MerkmobiladminView());
            },
            
            icon: Icon( // <-- Icon
              Ionicons.car,
              size: 30.0,
              
            ),
            label: Text('Mobil',
              style: TextStyle(
              fontSize: 16,
               ),), 
               // <-- Text
          ),
          const SizedBox(width: 20),
          ElevatedButton.icon(
            
            onPressed: () {
              Get.toNamed('/merkmotor');
            },
            icon: Icon( // <-- Icon
              Ionicons.bicycle,
              size: 30.0,
            ),
            label: Text('Motor',
            style: TextStyle(
              fontSize: 16,
            ),), // <-- Text
          ),
              ],
            ),
          ),

        ],
      ),
    )
               
              ],
              
            ),
         ),
      ),
    );
  }
}
