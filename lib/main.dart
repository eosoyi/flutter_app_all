import 'package:flutter/material.dart';
import 'package:pruebas/TestWidgets.dart';
import 'package:pruebas/Utils/DraggableScrollableSheetTest.dart';
import 'package:pruebas/ejercicios/Ejercicio1.dart';
import 'package:pruebas/ejercicios/Ejercicio2.dart';
import 'package:pruebas/ejercicios/MenuPrincipal.dart';
import 'package:pruebas/ejercicios/Otro.dart';
import 'package:pruebas/ejercicios/otros/OpcionesMenuTab.dart';
import 'package:pruebas/login%201/Login.dart';
import 'package:pruebas/login%201/Login1.dart';
import 'package:pruebas/login%201/SignUp.dart';
import 'package:pruebas/login_2/Login2.dart';
import 'package:pruebas/login_2/Login2Form.dart';
import 'package:pruebas/pages/Menu.dart';
import 'package:pruebas/scanner/DataQrPage.dart';
import 'package:pruebas/scanner/Scanner.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails detail){
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error ${detail.exception}',
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  };
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
        'login2' : (context) => const Login2(),
        'login2_form' : (context) => const Login2Form(),

        'test_widgets' : (context) => const TestWidgets(),
        'DraggableScrollableSheetTest' : (context) => const DraggableScrollableSheetTest(),


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