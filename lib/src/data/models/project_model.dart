class Project{

  String title;
  String description;
  List<String> language;
  String imgUrl;
  String? appUrl;
  String projectType;

  Project({
    required this.title,
    required this.description,
    required this.language,
    required this.imgUrl,
    this.appUrl,
    required this.projectType
  });
}