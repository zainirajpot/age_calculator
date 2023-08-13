import 'package:age_calculator/Custom_Widgets/TextFiled/textfiled_controller.dart';
import 'package:get/get.dart';

class CustomTextFormFieldBinding implements Bindings {
  @override
 void dependencies() {
  Get.lazyPut<TextFiledController>(() =>TextFiledController (
    ));
  }
  
}