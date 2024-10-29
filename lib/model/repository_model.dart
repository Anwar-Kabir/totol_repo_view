class Repository {
  final String name;
  final String description;
  final int starCount;
  final String language;

  Repository(
      {required this.name,
      this.description = '',
      required this.starCount,
      required this.language});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json['name'],
      description: json['description'] ?? '',
      starCount: json['stargazers_count'],
      language: json['language'] ?? 'Unknown',
    );
  }
}
