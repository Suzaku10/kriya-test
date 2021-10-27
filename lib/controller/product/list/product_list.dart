import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kriya_test/data/local/product/detail_argument/product_detail_argument.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';
import 'package:kriya_test/network/service/todos_service.dart';

class ProductListController extends GetxController
    with StateMixin<List<TodosResponse>> {
  final RxList<ProductDetailArgument> items = RxList.empty();
  final total = 0.obs;

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

  void putIfAbsent(ProductDetailArgument argument) {
    if (!items.any((element) => element.id == argument.id)) {
      items.add(argument);
    } else {
      items.removeWhere((element) => element.id == argument.id);
      items.add(argument);
    }
    _getTotal();
  }

  void _getTotal() {
    total.value = 0;
    for (ProductDetailArgument item in items) {
      total.value += item.qty ?? 0;
    }
  }
}
