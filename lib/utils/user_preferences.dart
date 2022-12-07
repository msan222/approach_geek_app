import 'package:ap_geek_app/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
      imagePath:
          'https://madelinesanvictores.files.wordpress.com/2022/07/dsc05959-1-edited.jpg',
      firstname: 'Name',
      lastname: 'LastName',
      email: 'youremail@email.com',
      about: 'Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.',
      phone: '(123)456-7891');

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
