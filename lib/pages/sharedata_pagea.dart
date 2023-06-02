import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter.dart';
class ShareDataPageA extends StatefulWidget {
  const ShareDataPageA({Key? key}) : super(key: key);

  @override
  State<ShareDataPageA> createState() => _ShareDataPageAState();
}

class _ShareDataPageAState extends State<ShareDataPageA> {
  final counterController = Get.find<CounterController>();
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
              counterController.inc();
            }, child: const Text("计数器+1")),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/sharedata_pageb");
            }, child: const Text('数据共享页面2')),
          ],
        ),
      ),
    );
  }
}
