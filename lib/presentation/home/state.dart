import 'package:get/get.dart';
import 'package:typicode/domain/entities/post.dart';

class HomeState {
  var posts = <Posts>[].obs;
  var isLoading = false.obs;
}
