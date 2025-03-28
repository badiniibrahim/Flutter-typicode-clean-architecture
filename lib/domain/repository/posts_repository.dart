import 'package:typicode/domain/entities/post.dart';

abstract class PostsRepository {
  Future<List<Posts>> getPosts();
}
