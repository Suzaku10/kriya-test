import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';
import 'package:kriya_test/data/variable/color.dart';
import 'package:kriya_test/utils/function_helper.dart';
import 'package:kriya_test/view/product/component/buy_button.dart';

class ProductDetailView extends GetView {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductListController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Total Item ${controller.total}'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            getSourceAssetWebp(controller.items[index].image!),
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Text(
                          controller.items[index].productName ?? '',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 8),
                        Text('Qty : ${controller.items[index].qty}'),
                      ],
                    ),
                separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                          height: 1, color: blackLight, width: double.infinity),
                    ),
                itemCount: controller.items.length),
          ),
          buyButton()
        ],
      ),
    );
  }
}
