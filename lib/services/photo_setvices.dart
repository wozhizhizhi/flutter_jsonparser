import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_jsonparser/photo.dart';
/**
 * map 列表
 * [
  {
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "http://placehold.it/600/92c952",
    "thumbnailUrl": "http://placehold.it/150/92c952"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "http://placehold.it/600/771796",
    "thumbnailUrl": "http://placehold.it/150/771796"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "officia porro iure quia iusto qui ipsa ut modi",
    "url": "http://placehold.it/600/24f355",
    "thumbnailUrl": "http://placehold.it/150/24f355"
  }
]
*/
class PhotoSetvice{

  Future<String> _loadPhotoJsonData() async{
    return await rootBundle.loadString("assets/photo.json");
  }

  Future <PhotoList> loadPhotoJson() async{
    String json = await _loadPhotoJsonData();
    final jsonPar = JSON.decode(json);
    PhotoList photoList = PhotoList.fromJson(jsonPar);
    for (var item in photoList.photos) {
      print("porduct: ${item.id}--${item.title}--${item.url}");
    }
    return photoList;
    // for (var item in address.streets) {
    //     print("address: ${item}");
    // }
  
  }
}