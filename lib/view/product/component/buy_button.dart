import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/view/product/list/product_list_view.dart';

Widget buyButton() {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => _showLoading(),
      child: const Text('Buy'),
    ),
  );
}

void _showLoading() {
  Get.showOverlay(
      asyncFunction: _mock,
      loadingWidget: const Center(
        child: CircularProgressIndicator(),
      ));
}

Future<void> _mock() async {
  await Future.delayed(const Duration(seconds: 2));
  Get.offAll(
    () => const ProductListView(),
  );
}
