class HomeStoreData {
  int id;
  String imgFilename;
  String name;
  int distance;
  int likeCount;
  double latitude;
  double longitude;
  int reviewCount;
  bool liked;

  HomeStoreData({
    required this.id,
    required this.imgFilename,
    required this.name,
    required this.distance,
    required this.likeCount,
    required this.latitude,
    required this.longitude,
    required this.reviewCount,
    required this.liked,
  });

  factory HomeStoreData.fromJson(Map<String, dynamic> json) => HomeStoreData(
        id: json["id"],
        imgFilename: json["imgFilename"],
        name: json["name"],
        distance: json["distance"],
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
        "distance": distance,
        "likeCount": likeCount,
        "latitude": latitude,
        "longitude": longitude,
        "reviewCount": reviewCount,
        "liked": liked,
      };
}
