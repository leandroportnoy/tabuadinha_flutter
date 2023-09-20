import 'package:tabuadinha_flutter_project/core/infra/http/dio/http_service.dart';

class ApiException implements Exception {
  final String msg;
  final int statusCode;

  ApiException({required this.statusCode, this.msg = 'Erro desconhecido'});

  ApiException.fromResponse(ClientResponse response)
      : statusCode = response.statusCode,
        msg = response.toString();
}
