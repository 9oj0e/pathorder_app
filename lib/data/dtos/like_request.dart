class LikeReqDTO {
  final int userId;
  final int storeId;

  LikeReqDTO(this.userId, this.storeId);

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "storeId": storeId,
      };
}
