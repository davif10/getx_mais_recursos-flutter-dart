import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mais_recursos/controllers/Tela3Controller.dart';

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
      body: FutureBuilder<dynamic>(
        future: controller.carregarPdf(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){

            case ConnectionState.none:
              // TODO: Handle this case.
              break;
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
            case ConnectionState.done:
              return controller.doc != null
                ? PDFViewer(document: controller.doc!)
                : Center(
                child: Text("Erro ao carregar o PDF!"),
              );
          }
          throw "Ocorreu um erro";
        },
      ),
    );
  }
}
