class StoreDetailReviewData {
  int userId;
  String nickname;
  String usersImgFilePath;
  int reviewId;
  String content;
  dynamic reviewsImgFilePath;
  String createdAt;

  StoreDetailReviewData({
    required this.userId,
    required this.nickname,
    required this.usersImgFilePath,
    required this.reviewId,
    required this.content,
    required this.reviewsImgFilePath,
    required this.createdAt,
  });

  factory StoreDetailReviewData.fromJson(Map<String, dynamic> json) =>
      StoreDetailReviewData(
        userId: json["userId"],
        nickname: json["nickname"],
        usersImgFilePath: json["usersImgFilePath"],
        reviewId: json["reviewId"],
        content: json["content"],
        reviewsImgFilePath: json["reviewsImgFilePath"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "nickname": nickname,
        "usersImgFilePath": usersImgFilePath,
        "reviewId": reviewId,
        "content": content,
        "reviewsImgFilePath": reviewsImgFilePath,
        "createdAt": createdAt,
      };
}
