import 'package:ap_geek_app/page/edit_name_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RenameWidget extends StatelessWidget {
  final VoidCallback onClicked;
  final bool isEdit;

  const RenameWidget({
    Key? key,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return IconButton(
      icon: const Icon(CupertinoIcons.arrowtriangle_right),
      color: Colors.grey,
      onPressed: onClicked,
    );
  }
}
