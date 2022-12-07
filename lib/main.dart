import 'package:ap_geek_app/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ap_geek_app/utils/user_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final String title = 'User Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.grey,
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}
