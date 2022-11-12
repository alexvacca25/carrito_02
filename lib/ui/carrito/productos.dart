import 'package:carrito_02/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Producto extends StatelessWidget {
  const Producto({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/comprar');
              },
              icon: const Icon(Icons.shopify_rounded))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.shopping_bag_outlined),
            ),
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      controlc.disminuir();
                      print(controlc.total);
                    },
                    icon: const Icon(Icons.remove_circle_outline)),
                const Text('Play Station 5'),
                IconButton(
                    onPressed: () {
                      controlc.aumentar();
                      print(controlc.total);
                    },
                    icon: const Icon(Icons.add_circle_outline)),
              ],
            ),
            subtitle: const Text('Valor: 4.000.000'),
            trailing: CircleAvatar(
              child: Obx(() => Text(controlc.total.toString())),
            ),
          )
        ],
      ),
    );
  }
}
