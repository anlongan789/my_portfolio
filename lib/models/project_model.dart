// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectModel {
  final String name;
  final String technologies;
  final String link;
  final String projectImg;
  bool isHover;
  ProjectModel({
    required this.name,
    required this.technologies,
    required this.link,
    required this.projectImg,
    this.isHover = false,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      name: "Study social network for FPT students",
      technologies: "Flutter, NodeJS, MongoDB",
      link: "https://github.com/Oline-make-friends/Online-make-friends-mobile",
      projectImg:
          "https://res.cloudinary.com/dh2srrs6l/image/upload/v1687768128/ytcfk8quemogx2vwmkyz.png",
    ),
    ProjectModel(
      name: "Game categories app",
      technologies: "Flutter",
      link: "https://github.com/anlongan789/flutter_game_categories",
      projectImg: "https://img.icons8.com/?size=512&id=40978&format=png",
    ),
    ProjectModel(
      name: "Weather app",
      technologies: "Flutter",
      link: "https://github.com/anlongan789/weather-app",
      projectImg: "https://img.icons8.com/?size=512&id=w04ro2PlMDyA&format=png",
    ),
    ProjectModel(
        name: "Online bird store",
        technologies: "ReactJS, C#",
        link: "https://github.com/mavisphung/swp391/tree/main/frontend.product",
        projectImg:
            "https://res.cloudinary.com/dh2srrs6l/image/upload/v1687772497/nmsjopwbmnd0h6hbkqy1.jpg")
  ];
}
