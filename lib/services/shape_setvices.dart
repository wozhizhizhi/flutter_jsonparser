import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_jsonparser/shape.dart';

/**
 * 简单的嵌套结构
 * {
  "shape_name":"rectangle",
  "property":{
    "width":5.0,
    "breadth":10.0
  }
}
 */
class ShapeSetvices{
   Future<String> _loadShapeJsonData() async{
    return await rootBundle.loadString("assets/shape.json");
  }

  Future <Null> shapeJson() async{
    String json = await _loadShapeJsonData();
    final jsonPar = JSON.decode(json);
    Shape shape = Shape.fromJson(jsonPar);
    print("shape: ${shape.property.width}");
  }
}
