import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  void showBottomSheet(){
    Get.bottomSheet(
        Container(
          color: Get.isDarkMode ? Colors.black12 : Colors.white,
          height: 200,
          child: Column(
            children:  [
              ListTile(
                leading: Icon(Icons.wb_sunny_outlined,color: Get.isDarkMode ? Colors.white : Colors.black,),
                title: Text('白天模式',style: TextStyle(color: Get.isDarkMode? Colors.white : Colors.black)),
                onTap: (){
                  Get.changeTheme(ThemeData.light());
                  Get.back();

                },
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny,color: Get.isDarkMode ? Colors.white : Colors.black,),
                title: Text('黑夜模式',style: TextStyle(color: Get.isDarkMode? Colors.white : Colors.black)),
                onTap: (){
                  Get.changeTheme(ThemeData.dark());
                  Get.back();
                },
              ),
            ],
          ),
        )
    );
  }
  void showSnackbar(){
    Get.snackbar("Snackbar 标题", "欢迎使用Snackbar");
  }
  void showDialog(){
    Get.defaultDialog(
        title: "提示",
        middleText: "您确定退出登录？",
        confirm: ElevatedButton(
            onPressed: () {
              print("确定");
              Get.back();
            },
            child: const Text("确定")),
        cancel: ElevatedButton(
            onPressed: () {
              print("取消");
              Get.back();
            },
            child: const Text("取消")));
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: showBottomSheet, child: const Text('Show BottomSheet')),
          ElevatedButton(onPressed: showSnackbar, child: const Text('Show showSnackbar')),
          ElevatedButton(onPressed: showDialog, child: const Text('Show showDialog')),
        ],
      ),
    );
  }
}
