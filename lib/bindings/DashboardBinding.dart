import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/DashboardController.dart';
import 'package:getx_mais_recursos/controllers/Tela1Controller.dart';
import 'package:getx_mais_recursos/controllers/Tela2Controller.dart';
import 'package:getx_mais_recursos/controllers/Tela3Controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => Tela1Controller());
    Get.lazyPut(() => Tela2Controller());
    Get.lazyPut(() => Tela3Controller());
  }

}