class ResponseDTO {

  int status;
  String? errorMessage;
  dynamic response;

  ResponseDTO(
      {required this.status,
      this.errorMessage,
      this.response});

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        errorMessage = json["msg"] ?? "",
        response = json["body"] ?? "";
}
