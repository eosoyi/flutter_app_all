import 'package:flutter/material.dart';
import 'package:pruebas/ejercicios/MenuPrincipal.dart';
import 'package:pruebas/ejercicios/otros/MiPerfil.dart';

class OpcionesMenuTab extends StatefulWidget {
  const OpcionesMenuTab({super.key});

  @override
  State<OpcionesMenuTab> createState() => _OpcionesMenuTabState();
}

class _OpcionesMenuTabState extends State<OpcionesMenuTab> {

  final pantallas = [
    const MenuPrincipal(),
    const MiPerfil(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mi perfil',
          ),
        ],
        currentIndex: index,
      ),
    );
  }
}
