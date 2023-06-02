import 'package:get/get.dart';
import '../middleware/shopmiddleware.dart';
import '../pages/tabs.dart';
import '../pages/user/login.dart';
import '../pages/user/register_first.dart';
import '../pages/user/register_second.dart';
import '../pages/user/register_third.dart';
import '../pages/user/shop.dart';
import '../pages/obsdata.dart';
import '../pages/obsclassdata.dart';
import '../pages/sharedata_pagea.dart';
import '../pages/sharedata_pageb.dart';
import '../pages/searchgetview.dart';

//引入binding
import '../binding/searchbinding.dart';
 class AppPage{
   static final routes=[
     GetPage(name: "/", page: ()=>const Tabs()),
     GetPage(name: "/login", page: ()=>const LoginPage()),
     GetPage(name: "/reg-first", page: ()=>const RegFirstPage()),
     GetPage(name: "/reg-second", page: ()=>const RegSecondPage()),
     GetPage(name: "/reg-third", page: ()=>const RegThirdPage()),
     GetPage(name: "/shop", page: ()=>const ShopPage(),middlewares: [ShopMiddleWare()]),
     GetPage(name: "/obsdata", page: ()=>const ObsDataPage()),
     GetPage(name: "/obsclassdata", page: ()=>const ObsClassData()),
     GetPage(name: "/sharedata_pagea", page: ()=>const ShareDataPageA()),
     GetPage(name: "/sharedata_pageb", page: ()=>const ShareDataPageB()),
     GetPage(name: "/searchgetview", page: ()=>const SearchGetView(),binding:SearchControllerBinding() ),

   ];
 }
