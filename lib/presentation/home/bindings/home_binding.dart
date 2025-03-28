import 'package:get/get.dart';
import 'package:typicode/domain/usecase/posts_use_case.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(postsUseCase: Get.find<PostsUseCase>()),
    );
  }
}
