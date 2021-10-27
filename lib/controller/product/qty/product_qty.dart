import 'package:get/get.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';
import 'package:kriya_test/data/local/product/detail_argument/product_detail_argument.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';

class ProductQtyController extends GetxController {
  final ProductListController _controller = Get.find();
  final argument = TodosResponse().obs;
  final qty = 0.obs;

  void get increment {
    qty.value++;
    _setProductDetailArgument();
  }

  void get decrement {
    if (qty.value > 0) {
      qty.value--;
      _setProductDetailArgument();
    } else {
      Get.snackbar('Warning !', 'Can\'t decrement less than 0');
    }
  }

  void _setProductDetailArgument() {
    _controller.putIfAbsent(
      ProductDetailArgument(
          qty: qty.value,
          productName: argument.value.title,
          image: 'image_placeholder',
          id: argument.value.id.toString()),
    );
  }
}
