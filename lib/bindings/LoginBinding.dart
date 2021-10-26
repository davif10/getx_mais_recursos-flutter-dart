import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/LoginController.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }

}