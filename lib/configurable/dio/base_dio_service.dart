import 'network_service_dio.dart';

class BaseServiceDio {
  late NetworkServiceDio service;

  BaseServiceDio() {
    service = NetworkServiceDio('https://jsonplaceholder.typicode.com/');
  }
}
