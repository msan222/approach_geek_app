import 'package:ap_geek_app/model/user.dart';
import 'package:ap_geek_app/utils/user_preferences.dart';
import 'package:ap_geek_app/widget/appbar_widget.dart';
import 'package:ap_geek_app/widget/textfield_widget.dart';
import 'package:ap_geek_app/widget/button_widget.dart';
import 'package:ap_geek_app/widget/Rephoto_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';

class EditPhotoPage extends StatefulWidget {
  @override
  _EditPhotoPageState createState() => _EditPhotoPageState();
}

class _EditPhotoPageState extends State<EditPhotoPage> {
  late User user;

  @override
  void initState() {
    super.initState();

    user = UserPreferences.getUser();
  }

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
                Text(
                  textAlign: TextAlign.center,
                  'Upload a Photo of Yourself',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                const SizedBox(height: 50),
                RephotoWidget(
                  //profile pic and editor
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {
                    final image = await ImagePicker()
                        .getImage(source: ImageSource.gallery);

                    if (image == null) return;

                    final directory = await getApplicationDocumentsDirectory();
                    final name = basename(image.path);
                    final imageFile = File('${directory.path}/$name');
                    final newImage =
                        await File(image.path).copy(imageFile.path);

                    setState(() => user = user.copy(imagePath: newImage.path));
                  },
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
