import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MBView extends StatelessWidget {
  const MBView({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: () {
                Get.toNamed('/modelmobil');
              },
            
    
    child: Container(
      height: 55,
     padding: EdgeInsets.only(left: 15, right: 15),
     decoration: BoxDecoration(
      color: Colors.white,
      border: Border.symmetric(),
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1)
        )
      ]
     ) ,
     
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: Image.asset(
                    'assets/images/secondary_logo.png',
                    height: 20,
                    width: 40,
                  ),
          ),
          Form(
            child: Text(
            'Honda',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
            )
            ),
        ],
      ),
    ),
    );
  }
}