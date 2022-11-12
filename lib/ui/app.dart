import 'package:carrito_02/ui/carrito/comprar.dart';
import 'package:carrito_02/ui/carrito/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de Compras',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Producto(),
      routes: {
        '/producto': (context) => const Producto(),
        '/comprar': (context) => const Comprar()
      },
    );
  }
}
