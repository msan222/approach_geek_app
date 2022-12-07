import 'package:ap_geek_app/page/edit_about_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReaboutWidget extends StatelessWidget {
  final VoidCallback onClicked;
  final bool isEdit;

  const ReaboutWidget({
    Key? key,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.grey;

    return IconButton(
      icon: const Icon(CupertinoIcons.arrowtriangle_right),
      color: Colors.grey,
      onPressed: onClicked,
    );
  }
}
