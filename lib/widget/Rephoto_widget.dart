import 'package:flutter/material.dart';
import 'dart:io';

class RephotoWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const RephotoWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.black;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            top: 0,
            right: 0,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = imagePath.contains('https://')
        ? NetworkImage(imagePath)
        : FileImage(File(imagePath));

    return buildRectangle(
      color: Colors.black,
      all: 4,
      child: ClipRect(
        child: Material(
          color: Colors.black,
          child: Ink.image(
            image: image as ImageProvider,
            fit: BoxFit.cover,
            width: 350,
            height: 350,
            child: InkWell(onTap: onClicked),
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildRectangle(
        color: Colors.black,
        all: 3,
        child: buildRectangle(
          color: color,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildRectangle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipRect(
          child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      ));
}
