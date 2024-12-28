import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homecontroller extends GetxController {
  var countervalue = 0.obs;
  TextEditingController amountvalue = TextEditingController();

  addvalue() {
    countervalue++;
  }

  subvaleu() {
    countervalue--;   
    // update();
  }

  addamount() {
    countervalue = countervalue + int.parse(amountvalue.text);
    // update();
  }

  subamout() {
    countervalue = countervalue - int.parse(amountvalue.text);
    // update();
  }
}
