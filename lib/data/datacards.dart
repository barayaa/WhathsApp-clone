import 'package:flutter/material.dart';
import 'package:whatsup/data/datalist.dart';

class Datacards extends StatelessWidget {
  final List list;
  // ignore: prefer_const_constructors_in_immutables
  Datacards({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              list.imagePath,
            ),
          ),
          title: Text(
            list.name,
          ),
          subtitle: Text(
            list.title,
          ),
          trailing: Text("${list.temps}"),
        ),
        const Divider()
      ],
    );
  }
}
