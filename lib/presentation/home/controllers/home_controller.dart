import 'package:get/get.dart';
import 'package:typicode/core/errors/app_exceptions.dart';
import 'package:typicode/domain/usecase/posts_use_case.dart';
import 'package:typicode/presentation/home/state.dart';

class HomeController extends GetxController {
  final PostsUseCase postsUseCase;
  final HomeState state = HomeState();

  HomeController({
    required this.postsUseCase,
  });

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      state.isLoading.value = true;
      state.posts.value = await postsUseCase.getPosts();
    } on AppException catch (e) {
      Get.snackbar('Erreur', e.message);
    } catch (e) {
      Get.snackbar('Erreur', 'Quelque chose s’est mal passé');
    } finally {
      state.isLoading.value = false;
    }
  }
}
