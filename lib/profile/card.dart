import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({Key? key, required this.title, required this.icon}) : super(key: key);
  @override
  String title;
  IconData icon;
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          trailing: Icon(icon),
          dense: true,
          onTap: () {},
        )
      ],
    );
  }
}
