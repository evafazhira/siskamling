class UserModel {
  final int? id;
  final String email;
  final String username;
  final String password;
  final String role;
  final String? createdAt;

  UserModel({
  this.id,
  required this.email,
  required this.username,
  required this.password,
  required this.role,
  this.createdAt,

});

factory UserModel.fromMap(Map<String, dynamic> data) {return UserModel(
  id: data['id'],
  email: data['email'],
  username: data['username'],
  password: data['password'],
  role: data['role'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'id': id,
  'email': email,
  'username': username,
  'password': password,
  'role': role,
  'createdAt': createdAt,
};
Map<String, dynamic> toMapInsert() => {
  'email': email,
  'username': username,
  'password': password,
  'role': role,
  'createdAt': createdAt,
};
}