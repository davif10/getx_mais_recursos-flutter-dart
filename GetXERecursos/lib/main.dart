import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxerecursos/util/RouteGenerator.dart';

void main() {
  runApp(
      GetMaterialApp(
        initialRoute: "/",
        getPages: RouteGenerator.rotas,
        debugShowCheckedModeBanner: false,)
  );
}
