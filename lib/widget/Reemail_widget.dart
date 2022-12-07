import 'package:ap_geek_app/page/edit_email_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReemailWidget extends StatelessWidget {
  final VoidCallback onClicked;
  final bool isEdit;

  const ReemailWidget({
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
