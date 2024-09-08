// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpesa/screens/grow_screen.dart';
import 'package:mpesa/screens/home_screen.dart';
import 'package:mpesa/screens/services_screen.dart';
import 'package:mpesa/screens/transact_screen.dart';

class SafaricomHome extends StatefulWidget {
  const SafaricomHome({super.key});

  @override
  State<SafaricomHome> createState() => _SafaricomHomeState();
}

class _SafaricomHomeState extends State<SafaricomHome> {
  var _pageIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const TransactScreen(),
    const GrowScreen(),
    const ServicesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 8),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftoppng.com%2Ffree-image%2Fninja-head-icon-ninja-vector-icon-PNG-free-PNG-Images_125970&psig=AOvVaw3RcIWYLlNWqqefz0pjP5PC&ust=1725902020826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIjLu5rss4gDFQAAAAAdAAAAABAE",
                fit: BoxFit.cover,
              ),
            ),
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
      body: _pages[_pageIndex],
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
