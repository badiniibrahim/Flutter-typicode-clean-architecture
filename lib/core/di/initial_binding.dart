import 'package:get/get.dart';
import 'package:typicode/core/network/dio_client.dart';
import 'package:typicode/data/repository/posts_repository_impl.dart';
import 'package:typicode/domain/repository/posts_repository.dart';
import 'package:typicode/domain/usecase/posts_use_case.dart';

class InitialBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<DioClient>(() => DioClient());

    Get.lazyPut<PostsRepository>(
      () => PostsRepositoryImpl(Get.find<DioClient>()),
    );

    Get.lazyPut(
      () => PostsUseCase(
        repository: Get.find<PostsRepository>(),
      ),
    );
  }
}
