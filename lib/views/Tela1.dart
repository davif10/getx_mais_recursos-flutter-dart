import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/Tela1Controller.dart';

class Tela1 extends GetView<Tela1Controller> {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usando Filtro em imagens'),
      ),
      body: Obx(() => Center(
        child: Container(
          child: controller.imagem.value.path == ""
              ? Center(
            child: Text('Nenhuma imagem selecionada!'),
          )
              : Image.file(controller.imagem.value),
        ),
      )),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => controller.getImage(context),
        tooltip: 'Escolha uma foto.',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

