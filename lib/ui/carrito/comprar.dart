import 'package:carrito_02/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Comprar extends StatelessWidget {
  const Comprar({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito cc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de Compras'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Play Station 5'),
            CircleAvatar(
              child: Text(cc.total.toString()),
            )
          ],
        ),
      ),
    );
  }
}
