import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF075e54),
        onPressed: () {},
        child: const Icon(
          Icons.photo_camera,
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.jpg'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to add Status'),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            height: 25,
            child: const Text(
              'Recent Status',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'Souphiane',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'Rabiou',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'A.KArim',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'A.KArim',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'A.KArim',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Iphone.png',
              ),
            ),
            title: Text(
              'A.KArim',
            ),
            subtitle: Text(
              'il y\'a 42 minutes',
            ),
          )
        ],
      ),
    );
  }
}
