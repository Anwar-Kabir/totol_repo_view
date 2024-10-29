import 'package:get/get.dart';
import 'package:remote_task_git_api/model/repository_model.dart';
 
import '../services/github_service.dart';

class GitHubController extends GetxController {
  var repositories = <Repository>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  final GitHubService _service = GitHubService();

  Future<void> fetchRepositories(String username) async {
    isLoading.value = true;
    errorMessage.value = '';

    try {
      repositories.value = await _service.fetchRepositories(username);
    } catch (error) {
      errorMessage.value = 'User not found or failed to load repositories';
    } finally {
      isLoading.value = false;
    }
  }
}
