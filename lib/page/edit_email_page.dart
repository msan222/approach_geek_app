import 'package:ap_geek_app/model/user.dart';
import 'package:ap_geek_app/utils/user_preferences.dart';
import 'package:ap_geek_app/widget/appbar_widget.dart';
import 'package:ap_geek_app/widget/textfield_widget.dart';
import 'package:ap_geek_app/widget/button_widget.dart';
import 'package:flutter/material.dart';

class EditEmailPage extends StatefulWidget {
  @override
  _EditEmailPageState createState() => _EditEmailPageState();
}

class _EditEmailPageState extends State<EditEmailPage> {
  User user = UserPreferences.getUser();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            Column(
              children: [
                TextFieldWidget(
                  label: 'What is your Email?',
                  text: user.email,                  
                  onChanged: (email) => user = user.copy(email: email),
                ),
                const SizedBox(height: 50),
                ButtonWidget(
                  text: 'Save',
                  onClicked: () {
                    UserPreferences.setUser(user);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),          
          ],
        ),
      );
}
