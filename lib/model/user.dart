enum userType {
  user,
  company,
  mentor,
}

class UserModel {
  UserModel({
    required this.uID,
    this.goalID,
    this.type,
    this.name,
  });
  final String uID;
  String? name;
  String? type;
  String? goalID; // only for the user userType
  // only for the user and Mentor userType
  //List<String>? mentorsIDList; // only for the user userType
}
