import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/Tela2Controller.dart';

class Tela2 extends GetView<Tela2Controller> {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Extended Image Editor"),
      ),
      body: Column(
        children: [
          ExtendedImage.network(
            "https://www.hypeness.com.br/1/2018/12/imagens-surreais.jpg",
            height: 500,
            fit: BoxFit.contain,
            mode: ExtendedImageMode.editor,
            extendedImageEditorKey: controller.editorKey,
            initEditorConfigHandler: (state) {
              return EditorConfig(
                  maxScale: 8.0,
                  cropRectPadding: EdgeInsets.all(20.0),
                  hitTestSize: 20.0,
                  cropAspectRatio: 1.3);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.crop)),
              IconButton(
                  onPressed: () => controller.inverterLado(),
                  icon: Icon(Icons.flip)),
              IconButton(
                  onPressed: () => controller.rotacionarEsquerda(),
                  icon: Icon(Icons.rotate_left)),
              IconButton(
                  onPressed: () => controller.rotacionarDireita(),
                  icon: Icon(Icons.rotate_right)),
              IconButton(
                  onPressed: () => controller.reset(),
                  icon: Icon(Icons.restore)),
            ],
          )
        ],
      ),
    );
  }
}
