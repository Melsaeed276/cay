enum userType {
  user,
  company,
  mentor,
}

class User {
  User({
    required this.uID,
  });
  final String uID;
  String? name;
  userType? type;
  String? goalID; // only for the user userType
  // only for the user and Mentor userType
  //List<String>? mentorsIDList; // only for the user userType
}
