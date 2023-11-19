import 'package:flutter/material.dart';
import 'package:pruebas/ejercicios/Ejercicio1.dart';
import 'package:pruebas/ejercicios/Ejercicio2.dart';
import 'package:pruebas/ejercicios/MenuPrincipal.dart';
import 'package:pruebas/ejercicios/Otro.dart';
import 'package:pruebas/ejercicios/otros/OpcionesMenuTab.dart';
import 'package:pruebas/login%201/Login.dart';
import 'package:pruebas/login%201/Login1.dart';
import 'package:pruebas/login%201/SignUp.dart';
import 'package:pruebas/pages/Menu.dart';
import 'package:pruebas/scanner/DataQrPage.dart';
import 'package:pruebas/scanner/Scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "menu",
      routes: {
        'menu' : (context) => const Menu(),
        'ejercicio_1' : (context) => const Ejercicio1(),
        'ejercicio_2' : (context) => const Ejercicio2(),

        // login 1
        'login1' : (context) => const Login1(),
        'login1_page' : (context) => const Login(),
        'sign_up_login1' : (context) => const SignUp(),

        // Leslie
        'otro' : (context) => const Otro(),
        'menu_principal' : (context) => const MenuPrincipal(),
        'opciones_menu_tab': (context) => const OpcionesMenuTab(),
        'scanner': (context) => const ScannerMain(),
        'data_qr_page' : (context) => const DataQrPage(),
      },
    );
  }
}