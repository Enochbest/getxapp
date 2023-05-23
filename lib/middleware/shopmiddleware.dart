import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShopMiddleWare extends GetMiddleware{
    @override
  RouteSettings? redirect(String? route){
        // return null;
        return const RouteSettings(name:"/login",arguments: {"id":'4444'});
    }
}