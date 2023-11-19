import 'package:flutter/material.dart';
import 'package:pruebas/complementos/TextFormUtils.dart';

class Otro extends StatefulWidget {
  const Otro({super.key});

  @override
  State<Otro> createState() => _OtroState();
}

class _OtroState extends State<Otro> {
  final GlobalKey<FormState> _formNit = GlobalKey<FormState>();
  late TextEditingController _usuario;
  late TextEditingController _password;


  @override
  void initState(){
    super.initState();
    _usuario = TextEditingController(text: '');
    _password = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    void validarLogin(){
      if(_formNit.currentState!.validate()){

        //TODO AQUI SE HACE LA PETICION AL WS Y LA VALIDACIONES CORRESPONDIENTES

        Navigator.pushNamed(context, 'opciones_menu_tab');
      }
    }

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/logo_sin_fondo.png', width: 120),
                const SizedBox(height: 20,),
                Form(
                  key: _formNit,
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200
                        ),
                        child: TextFormUtils(
                          enabled: true,
                          color: Colors.black,
                          label: 'Ingrese usuario',
                          controller: _usuario,
                          prefixIcon: const Icon(Icons.person, color: Colors.black),
                          validator: ( value ) {
                            if (value!.isEmpty) return 'El usuario es requerido';
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200
                        ),
                        child: TextFormUtils(
                          enabled: true,
                          color: Colors.black,
                          label: 'Ingrese contraseña',
                          controller: _password,
                          prefixIcon: const Icon(Icons.password, color: Colors.black),
                          validator: ( value ) {
                            if (value!.isEmpty) return 'La contraseña es requerido';
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),
                      GestureDetector(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: size.width * .45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.orange,
                            ),
                            child: const Center(
                              child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                  textAlign: TextAlign.center
                              ),
                            ),
                          ),
                        ),
                        onTap: () => validarLogin(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
