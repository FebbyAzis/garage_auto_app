import 'package:flutter/material.dart';
import 'package:garage_auto/utils/style/global.colors.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class ListKendaraan extends StatelessWidget {
  const ListKendaraan({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Get.toNamed('/merkmobil');
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
    );
  }
}