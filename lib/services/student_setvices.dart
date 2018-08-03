import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_jsonparser/student.dart';
/**
 * 简单的json解析
 * {
    "id":"487349",
    "name":"Pooja Bhaumik",
    "score" : 45
    }
 */
class StudentServices{

  Future <String> loadStudentJsonData() async{
    return rootBundle.loadString("assets/student.json");
  }

  Future<Null> loadStudent() async{
    String json = await loadStudentJsonData();
    print("json: ${json}");
    // 解析字符串并返回生成的Json对象
    // final jsonRep = JSON.decode(json);
    Map<String , dynamic> jsonRep = JSON.decode(json);
    print("jsonRep: ${jsonRep}");
    Student student = Student.fromJson(jsonRep);
    print(student.name);
  } 
}