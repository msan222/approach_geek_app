import 'package:ap_geek_app/model/user.dart';
import 'package:ap_geek_app/page/edit_name_page.dart';
import 'package:ap_geek_app/page/edit_photo_page.dart';
import 'package:ap_geek_app/page/edit_about_page.dart';
import 'package:ap_geek_app/page/edit_phone_page.dart';
import 'package:ap_geek_app/page/edit_email_page.dart';
import 'package:ap_geek_app/utils/user_preferences.dart';
import 'package:ap_geek_app/widget/Rename_widget.dart';
import 'package:ap_geek_app/widget/Rephone_widget.dart';
import 'package:ap_geek_app/widget/Reemail_widget.dart';
import 'package:ap_geek_app/widget/Reabout_widget.dart';
import 'package:flutter/material.dart';
import 'package:ap_geek_app/widget/appbar_widget.dart';
import 'package:ap_geek_app/widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return Scaffold(
      //scaffolding of home page
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 80),
          Text(
            textAlign: TextAlign.center,
            'Edit Profile',
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
          const SizedBox(height: 24),
          ProfileWidget(
            //profile pic and editor
            imagePath: user.imagePath,
            onClicked: () async {
              //method that takes user to the editing page
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditPhotoPage()),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildName(user),
              const SizedBox(width: 10),
              buildEditButtons(),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildEditButtons() => Column(
        children: [
          RenameWidget(
            onClicked: () async {
              //method that takes user to the editing page
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditNamePage()),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 40),
          RephoneWidget(
            onClicked: () async {
              //method that takes user to the editing page
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditPhonePage()),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 35),
          ReemailWidget(
            onClicked: () async {
              //method that takes user to the editing page
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditEmailPage()),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 35),
          ReaboutWidget(
            onClicked: () async {
              //method that takes user to the editing page
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditAboutPage()),
              );
              setState(() {});
            },
          ),
          const SizedBox(height: 24),
        ],
      );

  Widget buildName(User user) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                user.firstname + ' ' + user.lastname,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              buildDivider(),
              const SizedBox(height: 20),
              Text(
                'Phone',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                user.phone,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              buildDivider(),
              const SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                user.email,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              buildDivider(),
              const SizedBox(height: 20),
              Text(
                'Tell us about yourself!',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                user.about,
                maxLines: 4,
                softWrap: true,
                overflow: TextOverflow.clip,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              buildDivider(),
              const SizedBox(height: 20),
              Text(
                //placeholder text to get bottom border
                'Quick Fix',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.transparent),
              ),
            ],
          ),
        ),
      ]);

  Widget buildDivider() => Container(
        height: .05,
        width: 350,
        color: Colors.grey,
        child: const Divider(),
      );
}
