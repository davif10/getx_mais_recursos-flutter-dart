import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/DashboardController.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
            Widget child,
            Animation  primaryAnimation,
            Animation  secondaryAnimation,
            ) {
          return FadeThroughTransition(
            child: child,
            animation: primaryAnimation as Animation<double>,
            secondaryAnimation: secondaryAnimation as Animation<double>,
          );
        },
        child: controller.telas[controller.indiceAtual.value],
        duration: Duration(milliseconds: 800),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: controller.indiceAtual.value,
        onTap: (index) => controller.mudandoTela(index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home
              ),
              label: "Tela 1"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.image
              ),
              label: "Tela 2"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.picture_as_pdf
              ),
              label: "Tela 3"
          ),
        ],
      ),
    ));
  }
}
