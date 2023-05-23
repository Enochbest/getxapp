import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ObsDataPage extends StatefulWidget {
  const ObsDataPage({Key? key}) : super(key: key);

  @override
  State<ObsDataPage> createState() => _ObsDataPageState();
}

class _ObsDataPageState extends State<ObsDataPage> {
  late RxInt _counter = 0.obs;
  final nameList = <Map>[
    {
      "name":'张三',
      "age":18
    },
    {
      "name":'李四',
      "age":20
    },
  ].obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('定义响应式数据类型!'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("$_counter",style: const TextStyle(fontSize: 22),)),
            Obx(() => Column(
              children: nameList.map((e) => ListTile(
                title: Text("${e["name"]}"),
              )).toList(),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter++;
          nameList.add({
            "name":'王五',
            "age":55
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
