import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';
import 'package:kriya_test/data/local/product/detail_argument/product_detail_argument.dart';
import 'package:kriya_test/view/product/detail/product_detail_view.dart';

Widget checkoutButton(ProductDetailArgument argument) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => _test(argument),
      child: const Text('Checkout'),
    ),
  );
}

void _test(ProductDetailArgument argument) async {
  await Get.deleteAll();
  Get.lazyPut(() => ProductListController());
  Get.to(
    () => ProductDetailView(argument),
  );
}
