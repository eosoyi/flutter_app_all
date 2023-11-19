import 'package:flutter/material.dart';
import 'package:pruebas/complementos/TextFormUtils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  late TextEditingController _username;
  late TextEditingController _password;

  @override
  void initState(){
    super.initState();
    _username = TextEditingController(text: '');
    _password = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -size.height * .48,
              left: -size.width * .32,
              child: Container(
                width: size.width * 1,
                height: size.height * 1,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(50, 85, 237, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              left: size.width * .1,
              top: size.height * .13,
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Positioned(
              left: size.width * .05,
              top: size.height * .05,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              right: 20,
              top: size.height * .06,
              child: IconButton(
                onPressed: () {

                },
                icon: const Icon(
                  Icons.info_outline,
                  size: 30,
                  color: Color.fromRGBO(15, 31, 65, 1),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * .64,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100.00),
                      topLeft: Radius.circular(100.00),
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * .55,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100.00),
                      topLeft: Radius.circular(100.00),
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * .45,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(15, 31, 65, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100.00),
                      topLeft: Radius.circular(100.00),
                    )
                ),
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 250,
                            minWidth: 100
                        ),
                        child: const Text(
                          'Email or phone number',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 250,
                            minWidth: 100
                        ),
                        child: TextFormUtils(
                          enabled: true,
                          color: Colors.white,
                          colorTextField: const Color.fromRGBO(31, 46, 77, 1),
                          label: 'Type here...',
                          controller: _username,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white
                          ),
                          validator: (value) {

                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxWidth: 250,
                            minWidth: 100
                        ),
                        child: TextFormUtils(
                          enabled: true,
                          color: Colors.white,
                          colorTextField: const Color.fromRGBO(31, 46, 77, 1),
                          label: 'Type here...',
                          controller: _password,
                          prefixIcon: const Icon(
                              Icons.password,
                              color: Colors.white
                          ),
                          validator: (value) {

                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 90.0,
                          maxWidth: 190.0,
                        ),
                        child: InkWell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(52, 84, 236, 1),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.00),
                                  topLeft: Radius.circular(25.00),
                                  bottomLeft: Radius.circular(25.00),
                                  bottomRight: Radius.circular(25.00),
                                )
                            ),
                            child: const Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.00,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
