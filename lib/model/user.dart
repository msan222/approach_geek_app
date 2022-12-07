class User {
  final String imagePath;
  final String firstname;
  final String lastname;
  final String email;
  final String about;
  final String phone;

  const User({
    required this.imagePath,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.about,
    required this.phone,
  });

  User copy({
    String? imagePath,
    String? firstname,
    String? lastname,
    String? email,
    String? about,
    String? phone,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        about: about ?? this.about,
        phone: phone ?? this.phone,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        email: json['email'],
        about: json['about'],
        phone: json['phone'],
  );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'firstname': firstname,
        'lastname': lastname,
        'email': email,
        'about': about,
        'phone': phone,
      };
}
