import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatemerkmobilController extends GetxController {
  late TextEditingController namaC;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addMerkMobil(String nama) async {
    CollectionReference merkmobil = firestore.collection("merkmobil");

    try{
    await merkmobil.add({
      "nama": nama,
    });

    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Berhasil menambahkan data",
      onConfirm: ()=> Get.back(),
      textConfirm: "Okay",
    );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi kesalahan",
        middleText: "Tidak berhasil menambahkan data",
      );
    }

    
  }

  final count = 0.obs;
  @override
  void onInit() {
    namaC = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    
    super.onReady();
  }

  @override
  void onClose() {
    namaC.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
