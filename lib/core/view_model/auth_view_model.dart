import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AuthViewModel extends GetxController{
  var counter= 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment(){
    counter++;
  }
}