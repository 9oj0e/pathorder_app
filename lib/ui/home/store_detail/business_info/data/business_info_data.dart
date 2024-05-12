class BusinessInfoData {
  String ownerName;
  String ownerTel;
  String ownerEmail;
  String bizNum;

  BusinessInfoData({
    required this.ownerName,
    required this.ownerTel,
    required this.ownerEmail,
    required this.bizNum,
  });

  BusinessInfoData.fromJson(Map<String, dynamic> json)
      : ownerName = json["ownerName"],
        ownerTel = json["ownerTel"],
        ownerEmail = json["ownerEmail"],
        bizNum = json["bizNum"];
}
