import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './routers/routers.dart';
import 'binding/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      //全局绑定GetxBinding
      initialBinding: AllControllerBinding(),
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routes,
    );
  }
}
