import 'package:flutter/material.dart';
import 'package:whatsup/pages/chats.dart';
import 'package:whatsup/pages/status.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                actions: const [
                  Icon(
                    Icons.search,
                  ),
                  Icon(
                    Icons.more_vert,
                  ),
                ],
                pinned: true,
                floating: true,
                backgroundColor: const Color(
                  0xFF075e54,
                ),
                title: const Text('Whatsup'),
                bottom: TabBar(
                  indicatorWeight: 2,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Icon(
                        Icons.photo_camera,
                      ),
                    ),
                    Tab(
                      text: 'Chats',
                    ),
                    Tab(
                      text: 'Status',
                    ),
                    Tab(
                      text: 'Calls',
                    )
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const [
              Text('Camera'),
              Chats(),
              Status(),
              Text('Calls'),
            ],
          ),
        ),
      ),
    );
  }
}
