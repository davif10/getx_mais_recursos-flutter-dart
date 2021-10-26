import 'package:get/get.dart';
import 'package:getx_mais_recursos/views/Dashboard.dart';
import 'package:getx_mais_recursos/views/Login.dart';
import 'package:getx_mais_recursos/bindings/DashboardBinding.dart';
import 'package:getx_mais_recursos/bindings/LoginBinding.dart';

class RouteGenerator{
  static final rotas =[
    GetPage(name: "/", page: () => Login(), binding: LoginBinding(), transition: Transition.zoom),
    GetPage(name: "/dashboard", page: () => Dashboard(), binding: DashboardBinding(), transition: Transition.zoom),
  ];
}