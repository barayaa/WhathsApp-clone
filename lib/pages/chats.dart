import 'package:flutter/material.dart';
import 'package:whatsup/data/datacards.dart';
import 'package:whatsup/data/datalist.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Datacards(
              list: data[index],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF075e54),
          onPressed: () {},
          child: const Icon(
            Icons.message,
          ),
        ),
      ),
    );
  }
}
