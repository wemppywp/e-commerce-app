import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:w_store/features/authentication/screens/login/login_screen.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }


  void nextPage(){
    if(currentPageIndex.value == 2){
      //final storage = GetStorage();
      //storage.write('isFirstTime', false);
      //Get.offAll(LoginScreen());
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}