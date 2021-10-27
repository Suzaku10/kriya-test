import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';
import 'package:kriya_test/network/service/todos_service.dart';

class ProductListController extends GetxController
    with StateMixin<List<TodosResponse>> {
  @override
  void onInit() {
    _fetchProduct();
    super.onInit();
  }

  void get refreshData => _fetchProduct();

  void _fetchProduct() async {
    try {
      final response = await TodoService().fetchTodos();
      if (response?.isNotEmpty == true) {
        change(response, status: RxStatus.success());
      } else {
        change(null, status: RxStatus.empty());
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
