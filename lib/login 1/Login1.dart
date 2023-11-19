import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: size.height * .2,),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 500.0,
                    maxWidth: 600.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Data me',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(53, 83, 239, 1),
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 500.0,
                    maxWidth: 600.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Know yourself better',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(53, 83, 239, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * .6,
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
                height: size.height * .47,
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
                height: size.height * .35,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(15, 31, 65, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100.00),
                      topLeft: Radius.circular(100.00),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 90.0,
                        maxWidth: 190.0,
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, 'login1_page'),
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
                    ),
                    const SizedBox(height: 20),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 90.0,
                        maxWidth: 190.0,
                      ),

                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, 'sign_up_login1'),
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
                              'Sign Up',
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
          ],
        ),
      ),
    );
  }
}
