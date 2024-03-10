import 'dart:convert';

import 'package:SocialMediaClient/config.dart';
import 'package:SocialMediaClient/model/post.dart';
import 'package:SocialMediaClient/model/user.dart';

import 'package:http/http.dart' as http;

class Requests {
  static Future<List<Post>> getPosts() async {
    try {
      var response = await http.get(Uri.parse("${Config.baseUrl}/post"));
      List<dynamic> jsonList = jsonDecode(response.body);
      List<Post> posts = [];
      for (var object in jsonList) {
        final post = Post.fromJson(object);
        posts.add(post);
      }
      return posts;
    } catch (e) {
      print(e);
      return [];
    }
  }

  static Future<String> signup(String username, String password) async {
    try {
      var response = await http.post(Uri.parse('$Config.baseUrl/signup'),
          body: jsonEncode({
            'username': username,
            'password': password,
          }));
      return response.body;
    } catch (e) {
      return e.toString();
    }
  }

  static Future<User?> login(String username, String password) async {
    try {
      var response = await http.post(Uri.parse('$Config.baseUrl/login'),
          body: jsonEncode({'username': username, 'password': password}));
      return User.fromJson(jsonDecode(response.body));
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<String> addPost(String token, String message) async {
    try {
      var response = await http.post(Uri.parse('$Config.baseUrl/post'),
          body: jsonEncode({
            "message": message,
          }),
          headers: {
            'Authorization': 'Bearer $token',
          });
      return response.body;
    } catch (e) {
      return e.toString();
    }
  }
}
