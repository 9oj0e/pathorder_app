class ReviewReqDTO {
  final String content;
  final String? encodedData;

  ReviewReqDTO({required this.content, required this.encodedData});

  Map<String, dynamic> toJson() {
    return {
      "content": this.content,
      "encodedData": this.encodedData,
    };
  }


}