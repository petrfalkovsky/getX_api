// ignore_for_file: unnecessary_null_comparison

import 'package:getx_app/api/api_request.dart';
import 'package:getx_app/models/post.dart';

class PostsProvider {
  void getPostsList({
    required Function() beforeSend,
    required Function(List<Post> posts) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiRequest(
      url: 'https://jsonplaceholder.typicode.com/albums/1/photos',
      data: {},
    ).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess(
            (data as List).map((postJson) => Post.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
