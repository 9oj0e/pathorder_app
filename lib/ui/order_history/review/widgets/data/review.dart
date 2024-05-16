class Review {
  final int userId;
  final int storeId;
  final String content;
  final String imgFilename;

  Review(
      {required this.userId,
        required this.storeId,
        required this.content,
        required this.imgFilename,
        });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      userId: json["userId"] ?? null,
      storeId: json["storeId"] ?? null,
      content: json["content"] ?? "",
      imgFilename: json["imgFilename"] ?? "",
    );
  }
//
}