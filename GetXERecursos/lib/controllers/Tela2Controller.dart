import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Tela2Controller extends GetxController{
  final GlobalKey<ExtendedImageEditorState> editorKey =
  GlobalKey<ExtendedImageEditorState>();

  inverterLado() => editorKey.currentState!.flip();
  rotacionarEsquerda() => editorKey.currentState!.rotate(right: false);
  rotacionarDireita() => editorKey.currentState!.rotate(right: true);
  reset() => editorKey.currentState!.reset();
}