import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/controller/product/list/product_list.dart';
import 'package:kriya_test/controller/product/qty/product_qty.dart';
import 'package:kriya_test/data/remote/todos/todos_response.dart';
import 'package:kriya_test/data/variable/color.dart';
import 'package:kriya_test/utils/function_helper.dart';
import 'package:kriya_test/view/product/list/component/counter_widget.dart';

class ProductListView extends GetView<ProductListController> {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => ListView.separated(
            itemBuilder: (context, index) => _itemComponent(state![index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                      height: 1, color: blackLight, width: double.infinity),
                ),
            itemCount: state?.length ?? 0),
        onLoading: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        onEmpty: const Center(
          child: Text('Data Empty'),
        ),
      ),
    );
  }

  Widget _itemComponent(TodosResponse item) {
    Get.lazyPut(() => ProductQtyController(), tag: item.id.toString());

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            getSourceAssetWebp('image_placeholder'),
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  CounterWidget(item.id.toString(), item: item),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
