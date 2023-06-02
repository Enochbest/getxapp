import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter.dart';
class ShareDataPageB extends StatefulWidget {
  const ShareDataPageB({Key? key}) : super(key: key);

  @override
  State<ShareDataPageB> createState() => _ShareDataPageBState();
}

class _ShareDataPageBState extends State<ShareDataPageB> {
  //可以让Get找到一个其他页面正在被使用的Controller，并将她返回给你  有两种写法，一种是指定泛型，一种是指定返回类型
  // final counterController = Get.find<CounterController>();
  final counterController = Get.find<CounterController>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("数据共享页面1-计数器"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${counterController.counter}")),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              counterController.dec();
            }, child: const Text("计数器-1")),
          ],
        ),
      ),
    );
  }
}