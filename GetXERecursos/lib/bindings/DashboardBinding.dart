import 'package:get/get.dart';
import 'package:getxerecursos/controllers/DashboardController.dart';
import 'package:getxerecursos/controllers/Tela1Controller.dart';
import 'package:getxerecursos/controllers/Tela2Controller.dart';
import 'package:getxerecursos/controllers/Tela3Controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => Tela1Controller());
    Get.lazyPut(() => Tela2Controller());
    Get.lazyPut(() => Tela3Controller());
  }

}