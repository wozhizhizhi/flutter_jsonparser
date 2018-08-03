class Porduct {
  int id;
  String name;
  List<Image> images;
  Porduct({this.id, this.name, this.images});

  factory Porduct.fromJson(Map<String, dynamic> json) {
    var list = List.from(json['images']);
    // var list = json['images'] as List;
    print("Porduct runtimeType : ${list.runtimeType}");
    /**
     * list 在这里是一个 List。现在我们通过调用 Image.fromJson 遍历整个列表，
     * 并把 list 中的每个对象映射到 Image 中，然后我们将每个 map 
     * 对象放入一个带有 toList() 的新列表中，并将它存储在 List<Image> imagesList
     */
    List<Image> imageLists = list.map((index){
      return Image.fromJson(index);
    }).toList();
    return new Porduct(
      id: json['id'],
      name: json['name'],
      images: imageLists,
    );
  }
}

class Image {
  int id;
  String imageName;

  Image({this.id, this.imageName});
  factory Image.fromJson(Map<String, dynamic> json) {
    return new Image(
      id: json['id'],
      imageName: json['imageName'],
    );
  }
}
