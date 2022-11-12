import 'package:carrito_02/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() {
  Get.put(ControlCarrito());
  runApp(const App());
}
