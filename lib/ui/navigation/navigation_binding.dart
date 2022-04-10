import 'package:get/get.dart';
import 'package:getx_app/ui/home/home_controller.dart';
import 'package:getx_app/ui/navigation/navigation_controller.dart';
import 'package:getx_app/ui/posts/posts_controller.dart';
import 'package:getx_app/ui/profile/profile_controller.dart';

import 'navigation_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
