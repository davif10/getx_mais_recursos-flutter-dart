import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mais_recursos/util/RouteGenerator.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/",
      getPages: RouteGenerator.rotas,
      debugShowCheckedModeBanner: false,
    )
  );
}
