class LikePageData {
  int id;
  int storeId;
  String storeImgFilename;
  String storeName;
  int distance;
  int likeCount;
  int reviewCount;
  double latitude;
  double longitude;
  bool like;

  LikePageData({
    required this.id,
    required this.storeId,
    required this.storeImgFilename,
    required this.storeName,
    required this.distance,
    required this.likeCount,
    required this.reviewCount,
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
        likeCount: json["likeCount"],
        reviewCount: json["reviewCount"],
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
        "likeCount": likeCount,
        "reviewCount": reviewCount,
        "latitude": latitude,
        "longitude": longitude,
        "like": like,
      };
}
