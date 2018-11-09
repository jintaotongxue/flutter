import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'MusicPage.dart';
import 'MinePage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> with SingleTickerProviderStateMixin {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: new PageView(
            children: <Widget>[HomePage(), MusicPage(), MinePage()],
            controller: pageController,
            onPageChanged: onPageChanged,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('发现')),
              BottomNavigationBarItem(icon: Icon(Icons.music_note), title: Text('音乐')),
              BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
            ],
            onTap: onTap,
            currentIndex: page,
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
}