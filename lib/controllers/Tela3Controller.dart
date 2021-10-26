import 'dart:io';

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class Tela3Controller extends GetxController{
  PDFDocument? doc;
  String _link = "https://eppg.fgv.br/sites/default/files/teste.pdf";

  carregarPdf() async {
    try {
      doc = await PDFDocument.fromURL(_link);
    } catch (_) {
      Get.snackbar("Aviso", "Erro na leitura do PDF!");
    }
  }

  salvar() async{
    var resposta;
    try{
      Get.dialog(Center(
        child: CircularProgressIndicator(),
      ));
      resposta = await http.get(Uri.parse(_link));
      if(resposta.statusCode == 200){
        Directory directory = await getApplicationDocumentsDirectory();
        String local = "${directory.path}/teste.pdf";
        final file = File(local);
        await file.writeAsBytes(resposta.bodyBytes);
        _compartilhar(local);
      }

    }catch(_){
      Get.snackbar("Aviso", "Ocorreu um erro!");
    }

    if(resposta == null)
      await Future.delayed(Duration(seconds: 3));
    Get.back();
  }

  _compartilhar(String local) => Share.share(local);
}