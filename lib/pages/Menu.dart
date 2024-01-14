import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: _menuCreate('ejercicio_1', 'On boarding'),
              ),
              const SizedBox(height: 20,),
              Center(
                child: _menuCreate('ejercicio_2', 'Login UI ONE'),
              ),
              const SizedBox(height: 20,),
              Center(
                child: _menuCreate('otro', 'OTRO'),
              ),
              const SizedBox(height: 20,),
              Center(
                child: _menuCreate('scanner', 'Scanner'),
              ),
              const SizedBox(height: 20,),
              Center(
                child: _menuCreate('login1', 'Login 1'),
              ),
              const SizedBox(height: 20,),
              Center(
                child: _menuCreate('login2', 'Login 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuCreate(String ruta, String name){
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ruta),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.indigo),
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Text(name),
      ),
    );
  }
}
