import 'package:get/instance_manager.dart';
import 'package:testbizz/form/formController.dart';

class bindingg extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => formcontrroller(), fenix: true);
  }
}
