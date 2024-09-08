// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SafaricomHome extends StatefulWidget {
  const SafaricomHome({super.key});

  @override
  State<SafaricomHome> createState() => _SafaricomHomeState();
}

class _SafaricomHomeState extends State<SafaricomHome> {
  var _pageIndex = 0;
  final List<Widget> _pages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://x.com/Kwaya_Masta/photo",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.bell,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.clock,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.qrcode,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
            label: "Transact",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.shapes),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.arrowUpRightDots),
            label: "Grow",
          ),
        ],
      ),
    );
  }
}
