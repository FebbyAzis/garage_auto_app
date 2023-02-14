import 'package:flutter/material.dart';
import 'package:garage_auto/utils/widget/merk/merkmobil.dart';

import 'package:get/get.dart';

import '../controllers/createmerkmobil_controller.dart';

class CreatemerkmobilView extends GetView<CreatemerkmobilController> {
  const CreatemerkmobilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatemerkmobilView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: controller.namaC,
              autocorrect: false,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Nama Merk Mobil"
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed:() => controller.addMerkMobil(controller.namaC.text) , 
            child: Text("Tambah"))
          ],
        ),
      ),
      );
    
  }
}
