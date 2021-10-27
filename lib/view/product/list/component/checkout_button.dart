import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/view/product/detail/product_detail_view.dart';

Widget checkoutButton() {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => Get.to(
        () => const ProductDetailView(),
      ),
      child: const Text('Checkout'),
    ),
  );
}
