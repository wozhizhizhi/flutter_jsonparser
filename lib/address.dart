class Address {
  String city;
  List<String> streets;
  Address({this.city, this.streets});
  factory Address.fromJson(Map<String, dynamic> json) {
    var jsonfronStreets = json['streets'];
    List<String> listStreets = new List<String>.from(jsonfronStreets);
    return new Address(
      city: json['city'],
      // type 'List<dynamic>' is not a subtype of type 'List<String>'
      // 类型'List <dynamic>'不是'List <String>'类型的子类型
      streets: listStreets,
    );
  }
}
