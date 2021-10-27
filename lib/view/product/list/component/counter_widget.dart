import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:kriya_test/controller/product/qty/product_qty.dart';
import 'package:kriya_test/data/local/product/detail_argument/product_detail_argument.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';
import 'package:kriya_test/data/variable/color.dart';
import 'package:kriya_test/data/variable/size.dart';

import 'checkout_button.dart';

class CounterWidget extends GetView {
  final String id;
  final TodosResponse? item;

  const CounterWidget(this.id, {this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductQtyController controller = Get.find(tag: id);
    controller.argument.value = item!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () => controller.decrement,
            child: Container(
              decoration: BoxDecoration(
                color: black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              height: counterSize,
              width: counterSize,
              child: const Center(
                child: Text('-'),
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 30),
            alignment: Alignment.center,
            child: Obx(
              () => Text('${controller.qty}'),
            ),
          ),
          InkWell(
            onTap: () => controller.increment,
            child: Container(
              decoration: BoxDecoration(
                color: black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              height: counterSize,
              width: counterSize,
              child: const Center(
                child: Text('+'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
