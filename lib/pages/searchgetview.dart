import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search.dart';
class SearchGetView extends GetView<SearchController> {
  const SearchGetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('6666'),),
      body:Obx(()=>ListView(
        children: controller.hotList.map((element) => ListTile(title: Text("$element"),)).toList(),
      )),
    );
  }
}
