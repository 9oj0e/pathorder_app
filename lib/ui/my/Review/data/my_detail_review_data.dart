class MyDetailReviewData {
  int userId;
  String nickname;
  String usersImgFilePath;
  int reviewId;
  String content;
  dynamic imgFilePath;
  String createdAt;

  MyDetailReviewData({
    required this.userId,
    required this.nickname,
    required this.usersImgFilePath,
    required this.reviewId,
    required this.content,
    required this.imgFilePath,
    required this.createdAt,
  });

  factory MyDetailReviewData.fromJson(Map<String, dynamic> json) =>
      MyDetailReviewData(
        userId: json["userId"],
        nickname: json["nickname"],
        usersImgFilePath: json["usersImgFilePath"],
        reviewId: json["reviewId"],
        content: json["content"],
        imgFilePath: json["imgFilePath"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "nickname": nickname,
        "usersImgFilePath": usersImgFilePath,
        "reviewId": reviewId,
        "content": content,
        "imgFilePath": imgFilePath,
        "createdAt": createdAt,
      };
}
