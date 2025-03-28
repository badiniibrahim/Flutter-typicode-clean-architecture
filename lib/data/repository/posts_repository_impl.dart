import 'package:dio/dio.dart';
import 'package:typicode/core/errors/app_exceptions.dart';
import 'package:typicode/core/errors/http_error_handler.dart';
import 'package:typicode/core/network/dio_client.dart';
import 'package:typicode/data/models/posts_models.dart';
import 'package:typicode/domain/entities/post.dart';
import 'package:typicode/domain/repository/posts_repository.dart';

class PostsRepositoryImpl extends PostsRepository {
  final DioClient dioClient;

  PostsRepositoryImpl(this.dioClient);

  @override
  Future<List<Posts>> getPosts() async {
    try {
      final response = await dioClient.get('/posts');
      return (response.data as List)
          .map((json) => PostsModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw HttpErrorHandler.handle(e);
    } catch (e) {
      throw UnknownHttpException();
    }
  }
}
