import 'package:get/get.dart';
import 'package:getxerecursos/controllers/LoginController.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }

}