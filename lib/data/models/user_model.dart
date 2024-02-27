class UserModel {
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.logged,
  });

  final String firstName;
  final String lastName;
  final DateTime logged;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    firstName: json['firstName'],
    lastName: json['lastName'],
    logged: DateTime.parse(json['logged']),
  );
}