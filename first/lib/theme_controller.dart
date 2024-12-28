import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  Rx<ThemeData> _theme = ThemeData.light().obs;
  ThemeData get theme => _theme.value;
  void setTheme(ThemeData theme) {
    _theme.value = theme;
    Get.changeTheme(theme);
  }
}
