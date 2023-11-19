import 'package:flutter/material.dart';
import 'package:pruebas/complementos/FadeInUp.dart';

class Ejercicio1 extends StatefulWidget {
  const Ejercicio1({super.key});

  @override
  State<Ejercicio1> createState() => _Ejercicio1State();
}

class _Ejercicio1State extends State<Ejercicio1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 0),
                  child: Center(
                    child: Container(
                        height: 200,
                        child: const Icon(Icons.person, size: 200)),
                  ),
                ),
                const SizedBox(height: 10,),
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 0),
                  child: Text(
                    'Create better together',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade900
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 0),
                  child: Text(
                    'Join our community',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 200),
                  child: Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  )
                ),
                const SizedBox(height: 15,),
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 300),
                  child: SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.email, size: 30,),
                          const Spacer(),
                          Text('Continue with Google', style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade800
                          ),),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 300),
                  child: SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey.shade300)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.email, size: 30, color: Colors.white),
                          Spacer(),
                          Text('Signup with email', style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                          Spacer(),
                        ],
                      ),
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
