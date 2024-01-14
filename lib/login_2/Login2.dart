import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/complementos/FadeInUp.dart';

import '../Utils/ConstrainUtils.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  late TextEditingController _txtUsername = TextEditingController();
  late TextEditingController _txtPassword = TextEditingController();

  @override
  void initState(){
    super.initState();
    _txtUsername = TextEditingController(text: '');
    _txtPassword = TextEditingController(text: '');
  }

  void _validate(){
    if(_form.currentState!.validate()){

    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Container(
          color: const Color.fromRGBO(19, 23, 52, 1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: Text(
                        'Wellcome Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.1 - 10 > 70.0 ? 50.0 : MediaQuery.of(context).size.width * 0.1 - 10,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: ConstrainUtils(
                        child: TextFormField(
                          controller: _txtUsername,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Insert email'),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Username is required';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: ConstrainUtils(
                        child: TextFormField(
                          controller: _txtPassword,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Password'),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Password is required';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              color: Colors.white
                          ),
                          obscureText: true,

                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Text(
                          'Recover acount',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: ConstrainUtils(
                        child: CupertinoButton(
                          onPressed: () => _validate(),
                          color: const Color.fromRGBO(98, 24, 171, 1),
                          child: const Text(
                            'Sign in'
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      delay: Duration(milliseconds: 0),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconButton(
                             onPressed: () {

                             },
                             icon: const Icon(
                               Icons.ac_unit_rounded,
                               color: Colors.white,
                               size: 50.0,
                             ),
                           ),
                           const SizedBox(width: 20.0),
                           IconButton(
                             onPressed: () {

                             },
                             icon: const Icon(
                               Icons.ac_unit_rounded,
                               color: Colors.white,
                               size: 50.0,
                             ),
                           ),
                         ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      delay: const Duration(milliseconds: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have any account?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pushNamed(context, 'login2_form'),
                            child: const Text(
                              'Creare new!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String label){
    return InputDecoration(
      label: Text(
        label,
        style: const TextStyle(
            color: Colors.white
        ),
      ),
      fillColor: Colors.white,
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      labelStyle: const TextStyle(
          color: Colors.white
      ),
    );
  }
}
