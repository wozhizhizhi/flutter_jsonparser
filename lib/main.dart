import 'package:flutter/material.dart';
import 'services/student_setvices.dart';
import 'services/address_setvices.dart';
import 'services/shape_setvices.dart';
import 'services/Product_setvices.dart';
import 'services/photo_setvices.dart';
import 'package:flutter_jsonparser/photo.dart';
import 'dart:async';

void main() {
  runApp(new MyApp());
  StudentServices services = new StudentServices();
  services.loadStudent();

  AddressSetvices addressSetvices = new AddressSetvices();
  addressSetvices.loadJson();

  ShapeSetvices shapeSetvices = new ShapeSetvices();
  shapeSetvices.shapeJson();

  ProductSetvice productSetvice = new ProductSetvice();
  productSetvice.loadProductJson();

  PhotoSetvice photoSetvice = new PhotoSetvice();
  photoSetvice.loadPhotoJson();
}

/**
 * 具体的信息可以看打印，我将第五部获取到的json url,直接显示成列表
 */
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PhotoSetvice photoSetvice = new PhotoSetvice();
  List<Photo> photos = [];
  
  Future<Null> _getData() async{
      var pList = await photoSetvice.loadPhotoJson();
      setState(() {
              photos = pList.photos;
            });
      print(photos.toString());
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _getData();
    }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "jsonParser",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("jsonParser"),
          centerTitle: true,
        ),
      body: new ListView.custom(childrenDelegate: new SliverChildListDelegate(List.generate(photos.length,(index){
        return _buildItem(index);
      })),),),
    );
  }

  Widget _buildItem(int index){
    return new Card(child: new Image.network(photos[index].url,fit: BoxFit.fill,),);
  }
}
