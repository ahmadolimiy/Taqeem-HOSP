import 'package:get/get.dart';
import 'package:taq_pro/screen/manager.dart';

import 'controllers/conHome.dart';
import 'controllers/managerController.dart';

class Bind implements Bindings {
  @override
  void dependencies() {

    Get.put(HomeController());
    Get.lazyPut( () => ManController()) ;
    // TODO: implement dependencies
  }



}