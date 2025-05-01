class User {
  final String id;
  final String name;
  final String role;
  final bool isActive;

  User({
    required this.id,
    required this.name,
    required this.role,
    required this.isActive,
  });
}


class Metrics {
  final int id;
  final String title;
  final int count;
  final String description;

  Metrics({
    required this.id,
    required this.title,
    required this.count,
    required this.description
  });

}