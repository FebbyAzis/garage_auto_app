import 'package:flutter/material.dart';
import 'package:garage_auto/app/modules/data/controller/auth_controller.dart';
import 'package:get/get.dart';

class TextFormGlobal extends StatelessWidget {
  TextFormGlobal ({Key?key, required this.controller, 
  required this.text, 
  required this.textInputType, 
  required this.obscure,}) 
  : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure; 
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 55,
      padding: EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          )
        ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(
            height: 1,
          )
        ),
      ),
    );
  }
}