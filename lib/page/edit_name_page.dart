import 'package:ap_geek_app/model/user.dart';
import 'package:ap_geek_app/utils/user_preferences.dart';
import 'package:ap_geek_app/widget/appbar_widget.dart';
import 'package:ap_geek_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:ap_geek_app/widget/button_widget.dart';

class EditNamePage extends StatefulWidget {
  @override
  _EditNamePageState createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  User user = UserPreferences.getUser();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            Column(
              children: [
                TextFieldWidget(
                  label: 'What is Your Name?',
                  text: user.firstname,
                  onChanged: (firstname) => user = user.copy(firstname: firstname),
                ),                
                TextFieldWidget(
                  label: '', 
                  text: user.lastname,
                  onChanged: (lastname) => user = user.copy(lastname: lastname),
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
