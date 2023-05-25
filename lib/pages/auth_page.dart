import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(215, 117, 255, 0.5),
                  Color.fromRGBO(255, 188, 117, 0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 70,
                  ),
                  transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange.shade900,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.black26,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: const Text(
                    'Minha Loja',
                    style: TextStyle(
                        fontSize: 45, fontFamily: 'Anton', color: Colors.white),
                  ),
                ),
                AuthForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
