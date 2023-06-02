import 'package:get/get.dart';

class SearchController extends GetxController{
  RxList hotList = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getHotList();
    print("请求数据");

  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("页面加载完成");

  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("实例化结束");
  }
  void getHotList(){
    hotList.add("我是模拟数据");
  }

}