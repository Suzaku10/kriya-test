import 'package:flutter_test/flutter_test.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';
import 'package:kriya_test/controller/product/qty/product_qty.dart';
import 'package:kriya_test/utils/register_controller.dart';

void main() async {
  register.doRegister();

  test('''
  Check data from API is not empty''', () {
    final controller = ProductListController();
    expect(controller.state, controller.state?.isNotEmpty);
  });

  test('''check Functionality ''', () async {
    final controller = ProductQtyController();
    expect(controller.qty.value, 0);

    controller.increment;
    expect(controller.qty.value, 1);

    controller.increment;
    expect(controller.qty.value, 2);

    controller.decrement;
    expect(controller.qty.value, 1);
  });
}
