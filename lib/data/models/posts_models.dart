import 'package:typicode/domain/entities/post.dart';

class PostsModel extends Posts {
  PostsModel({
    required super.userId,
    required super.id,
    required super.title,
    required super.body,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
