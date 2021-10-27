import 'package:get/get.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';

final register = RegisterController();

class RegisterController {
  doRegister() {
    Get.put(ProductListController());
  }
}
