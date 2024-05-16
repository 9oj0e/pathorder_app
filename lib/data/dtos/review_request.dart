class ReviewReqDTO {
  final int userId;
  final int storeId;
  final String content;
  final String imgFilename;

  ReviewReqDTO(this.userId, this.storeId, this.content, this.imgFilename);

  Map<String, dynamic> toJson() {
    return {
      "userId": this.userId,
      "storeId": this.storeId,
      "content": this.content,
      "imgFilename": this.imgFilename,
    };
  }
}