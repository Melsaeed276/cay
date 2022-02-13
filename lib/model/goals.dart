class Goals {
  Goals(this.id, this.skills, {required this.name, required this.description});
  final String name;
  final String description;
  final String id;
  final List<Skills> skills;
}

class Skills {
  Skills(this.id, this.name);
  final String id;
  final String name;
}
