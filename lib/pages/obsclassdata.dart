import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'classdata.dart';
class ObsClassData extends StatefulWidget {
  const ObsClassData({Key? key}) : super(key: key);

  @override
  State<ObsClassData> createState() => _ObsClassDataState();
}

class _ObsClassDataState extends State<ObsClassData> {
  var person = Person();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('定义响应式数据类型!'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              "我的名字是 ${person.name.value}",
              style: const TextStyle(color: Colors.red, fontSize: 30),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          person.name.value = person.name.value.toUpperCase();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
