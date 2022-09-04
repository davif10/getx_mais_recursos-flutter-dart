import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:image/image.dart' as imageLib;
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:photofilters/filters/preset_filters.dart';
import 'package:photofilters/widgets/photo_filter.dart';

class Tela1Controller extends GetxController{
  Rx<File> imagem = File("").obs;


  Future getImage(context) async {
    XFile? imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);
    String fileName = basename(imagePicker!.path);
    var image = imageLib.decodeImage(await imagePicker.readAsBytes());
    image = imageLib.copyResize(image!, width: 600);
    Map imagefile = await Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => PhotoFilterSelector(
          title: Text("Filtros"),
          image: image!,
          filters: presetFiltersList,
          filename: fileName,
          loader: Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
    );
    if (imagefile != null && imagefile.containsKey('image_filtered')) {
      imagem.value = imagefile['image_filtered'];
    }
  }
}