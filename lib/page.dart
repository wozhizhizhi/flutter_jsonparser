class Page {
  int page;
  int per_page;
  int total;
  int total_pages;
  Author author;
  List<Data> data;

  Page(
      {this.page,
      this.per_page,
      this.total,
      this.total_pages,
      this.author,
      this.data});
  factory Page.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<Data> dataList = list.map((index) {
      return Data.fromJson(index);
    }).toList();
    return new Page(
      page: json['page'],
      per_page: json['per_page'],
      total: json['total'],
      total_pages: json['total_pages'],
      author: Author.fromJson(json['author']),
      data: dataList,
    );
  }
}

class Author {
  String first_name;
  String last_name;

  Author({this.first_name, this.last_name});
  factory Author.fromJson(Map<String, dynamic> json) {
    return new Author(
        first_name: json['first_name'], last_name: json['last_name']);
  }
}

class Data {
  int id;
  String first_name;
  String last_name;
  String avatar;
  List<Image> images;

  Data({this.id, this.first_name, this.last_name, this.avatar, this.images});
  factory Data.fromJson(Map<String, dynamic> json) {
    var list = json['images'] as List;
    List<Image> imageList = list.map((index) {
      return Image.fromJson(index);
    }).toList();

    return new Data(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      avatar: json['avatar'],
      images: imageList,
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
