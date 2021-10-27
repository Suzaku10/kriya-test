import 'package:kriya_test/configurable/dio/base_dio_service.dart';
import 'package:kriya_test/configurable/service_url.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';

class TodoService extends BaseServiceDio {
  Future<List<TodosResponse>?> fetchTodos() async {
    try {
      final response = await service.get(ServiceUrl.title);
      if (response is List) {
        return response.map((e) => TodosResponse.fromJson(e)).toList();
      }
    } catch (e) {
      rethrow;
    }
  }
}
