import 'package:typicode/domain/entities/post.dart';
import 'package:typicode/domain/repository/posts_repository.dart';

class PostsUseCase {
  final PostsRepository _postsRepository;

  PostsUseCase({required PostsRepository repository})
      : _postsRepository = repository;

  Future<List<Posts>> getPosts() {
    return _postsRepository.getPosts();
  }
}
