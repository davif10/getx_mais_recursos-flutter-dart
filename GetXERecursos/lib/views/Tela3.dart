import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxerecursos/controllers/Tela3Controller.dart';
import 'package:pdfx/pdfx.dart';

class Tela3 extends GetView<Tela3Controller> {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exibindo e compartilhando PDF"),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => controller.salvar(),
          )
        ],
      ),
      body:PdfViewPinch(controller: controller.pdfPinchController)
    );
  }
}
