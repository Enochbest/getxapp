import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录页面'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('登录演示执行登录有返回上一个页面'),
             const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                // print('6666');
                // Navigator.of(context).pop();
                Get.back();
              },
              child: const Text('Getx跳转执行登录')),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              print('6666');
              Get.toNamed("/RegFirstPage");
              Navigator.pushNamed(context, "/RegFirstPage");
            },
            child: const Text('Getx注册')),

          ],
        ),
      ),
    );
  }
}
