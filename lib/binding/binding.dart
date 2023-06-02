import 'package:get/get.dart';
import '../controllers/counter.dart';
class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CounterController>(() => CounterController(),fenix: true);
  }

}