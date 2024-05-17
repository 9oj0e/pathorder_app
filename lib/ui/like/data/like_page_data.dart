class LikePageData {
  int id;
  int storeId;
  String storeImgFilename;
  String storeName;
  int distance;
  double latitude;
  double longitude;
  bool like;

  LikePageData({
    required this.id,
    required this.storeId,
    required this.storeImgFilename,
    required this.storeName,
    required this.distance,
    required this.latitude,
    required this.longitude,
    required this.like,
  });

  factory LikePageData.fromJson(Map<String, dynamic> json) => LikePageData(
        id: json["id"],
        storeId: json["storeId"],
        storeImgFilename: json["storeImgFilename"],
        storeName: json["storeName"],
        distance: json["distance"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "storeId": storeId,
        "storeImgFilename": storeImgFilename,
        "storeName": storeName,
        "distance": distance,
        "latitude": latitude,
        "longitude": longitude,
        "like": like,
      };
}
