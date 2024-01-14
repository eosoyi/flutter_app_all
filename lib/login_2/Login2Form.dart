import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pruebas/Utils/ConstrainUtils.dart';
import 'package:pruebas/complementos/FadeInUp.dart';

class Login2Form extends StatefulWidget {
  const Login2Form({super.key});

  @override
  State<Login2Form> createState() => _Login2FormState();
}

class _Login2FormState extends State<Login2Form> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final TextEditingController _txtFirsName = TextEditingController();
  final TextEditingController _txtLastName = TextEditingController();
  final TextEditingController _txtUserName = TextEditingController();
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final TextEditingController _txtRepeatPassword = TextEditingController();
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {

    void _validate(){
      if(_form.currentState!.validate()){

      }
    }

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
              child: FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 0),
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70,),
                      Text(
                        'Wellcome Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.1 - 10 > 70.0 ? 50.0 : MediaQuery.of(context).size.width * 0.1 - 10,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 20,),

                      ConstrainUtils(
                        child: TextFormField(
                          controller: _txtFirsName,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('First name'),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'First name is required';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ConstrainUtils(
                        child: TextFormField(
                          controller: _txtLastName,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Last name'),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Last name is required';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ConstrainUtils(
                        child: TextFormField(
                          controller: _txtUserName,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Username'),
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
                      const SizedBox(height: 15,),
                      ConstrainUtils(
                        child: TextFormField(
                          controller: _txtEmail,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Email'),
                          style: const TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ConstrainUtils(
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
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ConstrainUtils(
                        child: TextFormField(
                          controller: _txtRepeatPassword,
                          cursorColor: Colors.white,
                          decoration: inputDecoration('Repeat password'),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Repear password is required';
                            }
                            return null;
                          },
                          style: const TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            onChanged: (value) {
                              setState(() {
                                _acceptTerms = value!;
                              });
                            },
                            value: _acceptTerms,
                            activeColor: Colors.white,
                            checkColor: const Color.fromRGBO(98, 24, 171, 1),
                          ),
                          const Text(
                            'Accept terms.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      ConstrainUtils(
                        child: CupertinoButton(
                          onPressed: () => _validate(),
                          color: const Color.fromRGBO(98, 24, 171, 1),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
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
