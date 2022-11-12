import 'dart:html';

import 'package:get/get.dart';

class ControlCarrito extends GetxController {
  final _cantidad = 0.obs;

  get total => _cantidad.value;

  void aumentar() {
    _cantidad.value = _cantidad.value + 1;
  }

  void disminuir() {
    _cantidad.value = _cantidad.value - 1;
  }
}
