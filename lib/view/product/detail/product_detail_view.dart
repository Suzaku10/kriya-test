import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/data/local/product/detail_argument/product_detail_argument.dart';
import 'package:kriya_test/utils/function_helper.dart';
import 'package:kriya_test/view/product/component/buy_button.dart';

class ProductDetailView extends GetView {
  final ProductDetailArgument argument;

  const ProductDetailView(this.argument, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    getSourceAssetWebp(argument.image!),
                  ),
                ),
                Text(
                  argument.productName ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 8),
                Text('Qty : ${argument.qty}'),
              ],
            ),
          ),
          buyButton()
        ],
      ),
    );
  }
}
