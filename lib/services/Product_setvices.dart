import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_jsonparser/product.dart';
/**
 * 含有 Lists 的嵌套结构
 * {
      "id":1,
      "name":"ProductName",
      "images":[
        {
          "id":11,
          "imageName":"xCh-rhy"
        },
        {
          "id":31,
          "imageName":"fjs-eun"
        }
      ]
  }
*/
class ProductSetvice{

  Future<String> _loadProductJsonData() async{
    return await rootBundle.loadString("assets/product.json");
  }

  Future <Null> loadProductJson() async{
    String json = await _loadProductJsonData();
    final jsonPar = JSON.decode(json);
    Porduct porduct = Porduct.fromJson(jsonPar);
    List<Image> images = porduct.images;
    for (var item in images) {
      print("porduct: ${item.id}--${item.imageName}");
    }
    // for (var item in address.streets) {
    //     print("address: ${item}");
    // }
  
  }
}