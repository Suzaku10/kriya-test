import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kriya_test/utils/register_controller.dart';
import 'package:kriya_test/view/product/list/product_list_view.dart';

void main() {
  register.doRegister();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductListView(),
    );
  }
}
