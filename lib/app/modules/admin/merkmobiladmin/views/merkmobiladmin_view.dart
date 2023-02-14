import 'package:flutter/material.dart';
import 'package:garage_auto/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/merkmobiladmin_controller.dart';

class MerkmobiladminView extends GetView<MerkmobiladminController> {
  const MerkmobiladminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MerkmobiladminView'),
        centerTitle: true,
      ),
     body:ListView.builder(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: Text("Honda"),
        )
        ,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATEMERKMOBIL),
        child: Icon(Icons.add),)  
    );
  }
}
