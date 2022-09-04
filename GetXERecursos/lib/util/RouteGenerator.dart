import 'package:get/get.dart';
import 'package:getxerecursos/views/Dashboard.dart';
import 'package:getxerecursos/views/Login.dart';
import 'package:getxerecursos/bindings/DashboardBinding.dart';
import 'package:getxerecursos/bindings/LoginBinding.dart';

class RouteGenerator{
  static final rotas =[
    GetPage(name: "/", page: () => Login(), binding: LoginBinding(), transition: Transition.zoom),
    GetPage(name: "/dashboard", page: () => Dashboard(), binding: DashboardBinding(), transition: Transition.zoom),
  ];
}