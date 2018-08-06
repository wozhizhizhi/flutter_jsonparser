import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_jsonparser/page.dart';

/**
 * 对于复杂数组的解析
 * { "page": 1,
  "per_page": 3,
  "total": 12,
  "total_pages": 4,
  "author":{
    "first_name": "Ms R",
    "last_name":"Reddy"
  },
  "data": [
    {
      "id": 1,
      "first_name": "George",
      "last_name": "Bluth",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]

    },
    {
      "id": 2,
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    },
    {
      "id": 3,
      "first_name": "Emma",
      "last_name": "Wong",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    }
  ]
}
 */
class PageSetvices{
   Future<String> _loadPageJsonData() async{
    return await rootBundle.loadString("assets/page.json");
  }

  Future <Null> shapeJson() async{
    String json = await _loadPageJsonData();
    final jsonPar = JSON.decode(json);
    Page page = Page.fromJson(jsonPar);
    print("page: ${page.data[0].first_name}");
  }
}
