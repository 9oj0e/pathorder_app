class ResponseDTO {
  int status;
  String? errorMessage;
  dynamic response;

  ResponseDTO({required this.status, this.errorMessage, this.response});

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        errorMessage = json["msg"] ?? "",
        response = json["body"] ?? "";

  @override
  String toString() {
    return 'ResponseDTO{status: $status, errorMessage: $errorMessage, response: $response}';
  }
}
