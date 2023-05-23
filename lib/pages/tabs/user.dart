import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            // Navigator.pushNamed(context, "/login");
            Get.toNamed("/login");
          }, child: const Text('Getx登录')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/reg-first");
            Get.toNamed("/reg-first");
          }, child: const Text('Getx注册')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Get.toNamed("/shop",arguments: {"id":66666});
          }, child: const Text('to Shop')),
        ],
      )
    );
  }
}
