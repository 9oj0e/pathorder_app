import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final baseUrl = "http://172.30.1.87:8080";

// mac : ipconfig getifaddr en0
final dio = Dio(
  BaseOptions(
    baseUrl: baseUrl, // 내 IP 입력
    contentType: "application/json; charset=utf-8",
    validateStatus: (status) => true, // 200 이 아니어도 예외 발생안하게 설정
  ),
);

const secureStorage = FlutterSecureStorage();
