import 'package:get/get.dart';

class ProductQtyController extends GetxController {
  final qty = 0.obs;

  void get increment => qty.value++;

  void get decrement {
    if (qty.value > 0) {
      qty.value--;
    } else {
      Get.snackbar('Warning !', 'Can\'t decrement less than 0');
    }
  }
}
