class StoreDetailData {
  int id;
  String imgFilename;
  String name;
  String intro;
  String openingTime;
  String closingTime;
  String closedDay;
  String address;
  int likeCount;
  double latitude;
  double longitude;
  int reviewCount;
  bool liked;

  StoreDetailData({
    required this.id,
    required this.imgFilename,
    required this.name,
    required this.intro,
    required this.openingTime,
    required this.closingTime,
    required this.closedDay,
    required this.address,
    required this.likeCount,
    required this.latitude,
    required this.longitude,
    required this.reviewCount,
    required this.liked,
  });

  factory StoreDetailData.fromJson(Map<String, dynamic> json) =>
      StoreDetailData(
        id: json["id"],
        imgFilename: json["imgFilename"],
        name: json["name"],
        intro: json["intro"],
        openingTime: json["openingTime"],
        closingTime: json["closingTime"],
        closedDay: json["closedDay"],
        address: json["address"],
        likeCount: json["likeCount"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        reviewCount: json["reviewCount"],
        liked: json["liked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imgFilename": imgFilename,
        "name": name,
        "intro": intro,
        "openingTime": openingTime,
        "closingTime": closingTime,
        "closedDay": closedDay,
        "address": address,
        "likeCount": likeCount,
        "latitude": latitude,
        "longitude": longitude,
        "reviewCount": reviewCount,
        "liked": liked,
      };
}
