import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_jsonparser/address.dart';
/**
 * 解析含有数组的简单结构
 * {
      "city": "Mumbai",
      "streets": [
        "address1",
        "address2"
      ]
   }
 */
class AddressSetvices{

  Future<String> _loadAddressJsonData() async{
    return await rootBundle.loadString("assets/address.json");
  }

  Future <Null> loadJson() async{
    String json = await _loadAddressJsonData();
    final jsonPar = JSON.decode(json);
    Address address = Address.fromJson(jsonPar);
    // for (var item in address.streets) {
    //     print("address: ${item}");
    // }
    for(int i = 0 ; i < address.streets.length ; i++){
      print("address: ${address.streets[i]}");
    }
  }
}