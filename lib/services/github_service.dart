import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:remote_task_git_api/model/repository_model.dart';
 

class GitHubService {
  Future<List<Repository>> fetchRepositories(String username) async {
    final url = 'https://api.github.com/users/$username/repos';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((repo) => Repository.fromJson(repo)).toList();
    } else {
      throw Exception('Failed to load repositories');
    }
  }
}
