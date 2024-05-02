class ResponseDTO {
  bool success;
  int status;
  String? errorMessage;
  dynamic response;

  ResponseDTO(
      {required this.success,
      required this.status,
      this.errorMessage,
      this.response});

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : success = json["success"],
        status = json["status"],
        errorMessage = json["errorMessage"] ?? "",
        response = json["response"] ?? "";
}
