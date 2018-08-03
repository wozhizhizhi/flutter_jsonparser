class PhotoList {
  List<Photo> photos;
  PhotoList({this.photos});

  // 我们不必把它映射到 json 字符串中的任何键，因为它是 List 而不是 map
  factory PhotoList.fromJson(List<dynamic> json) {
    List<Photo> photos = new List<Photo>();
    photos = json.map((i) {
     return Photo.fromJson(i);
    }).toList();
    return new PhotoList(photos: photos);
  }
}

class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
  factory Photo.fromJson(Map<String, dynamic> json) {
    return new Photo(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
