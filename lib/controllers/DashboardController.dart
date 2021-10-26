import 'package:get/get.dart';
import 'package:getx_mais_recursos/views/Tela1.dart';
import 'package:getx_mais_recursos/views/Tela2.dart';
import 'package:getx_mais_recursos/views/Tela3.dart';

class DashboardController extends GetxController{
  RxInt indiceAtual = 0.obs;

  final telas = [
    Tela1(),
    Tela2(),
    Tela3()
  ];

  mudandoTela(int index) => indiceAtual(index);
}