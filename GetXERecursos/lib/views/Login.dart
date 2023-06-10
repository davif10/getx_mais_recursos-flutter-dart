import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxerecursos/controllers/LoginController.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                  "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blue),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(30,16, 30, 16),
                    backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                onPressed: () => controller.irParaDashboard()
            )
          ],
        ),
      ),
    );
  }
}
