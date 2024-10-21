import 'package:get/get.dart';

class DetailsController extends GetxController{
  List details=[];
  @override
  void onInit() {
    details=Get.arguments['listPro'];
    super.onInit();
  }
}