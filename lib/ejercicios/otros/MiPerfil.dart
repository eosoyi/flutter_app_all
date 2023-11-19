import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/complementos/TextFormUtils.dart';

class MiPerfil extends StatefulWidget {
  const MiPerfil({super.key});

  @override
  State<MiPerfil> createState() => _MiPerfilState();
}

class _MiPerfilState extends State<MiPerfil> {

  TextEditingController _txtNombre = TextEditingController();
  TextEditingController _txtApellido = TextEditingController();
  TextEditingController _txtDepartamento = TextEditingController();


  @override
  void initState(){
    print('entrando a perfil');
    //TODO AQUI SE MANDA A TRAER LOS DATOS DEL USUARIO PARA ASIGNARLO A LOS TXT CORRESPONDIENTES
    _txtNombre = TextEditingController(text: 'Leslie');
    _txtApellido = TextEditingController(text: 'Lastro');
    _txtDepartamento = TextEditingController(text: 'Desarrollo Movil');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person, size: 100, color: Colors.teal),
                Form(
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200
                        ),
                        child: TextFormUtils(
                          enabled: false,
                          color: Colors.black,
                          label: 'Nombre',
                          controller: _txtNombre,
                          prefixIcon: const Icon(Icons.person, color: Colors.black),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200
                        ),
                        child: TextFormUtils(
                          enabled: false,
                          color: Colors.black,
                          label: 'Apellido',
                          controller: _txtApellido,
                          prefixIcon: const Icon(Icons.person, color: Colors.black),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 350,
                            minWidth: 200
                        ),
                        child: TextFormUtils(
                          enabled: false,
                          color: Colors.black,
                          label: 'Departamento',
                          controller: _txtDepartamento,
                          prefixIcon: const Icon(Icons.person, color: Colors.black),
                        ),
                      ),

                    ],
                  ),
                ),

                CupertinoButton(
                  onPressed: () {
                    print('cambiar contrasenia');
                  },
                  child: Container(
                    width: size.width * .7,
                    padding: const EdgeInsets.symmetric(vertical: 15,),
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cambiar contraseña', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {
                    print('Saliendo de sesion');
                  },
                  child: Container(
                    width: size.width * .7,
                    padding: const EdgeInsets.symmetric(vertical: 15,),
                    decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cerrar sesión', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.logout, color: Colors.white, size: 25,)
                      ],
                    ),
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
