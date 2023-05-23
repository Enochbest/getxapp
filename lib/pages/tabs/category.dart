import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {


  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.toNamed('/obsdata');
            }, child: const Text('定义响应式数据类型')),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/obsclassdata");
            }, child: const Text('自定义类数据响应式')),
            const SizedBox(height: 40,),
          ],
        )
    );
  }
}
