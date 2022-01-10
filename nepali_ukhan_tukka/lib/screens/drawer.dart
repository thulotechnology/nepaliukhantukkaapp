import 'package:flutter/material.dart';
import 'package:nepali_ukhan_tukka/screens/aboutus.dart';
import 'package:nepali_ukhan_tukka/screens/contact.dart';
import 'package:nepali_ukhan_tukka/screens/homepage1.dart';

class DrawerSlide extends StatefulWidget {
  const DrawerSlide({Key? key}) : super(key: key);

  @override
  State<DrawerSlide> createState() => _DrawerSlideState();
}

class _DrawerSlideState extends State<DrawerSlide> {
  int _selected = 0;
  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffe0a36e),
            ),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        'images/logo.png'),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Books Bazaar",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, .4),
                  child: const Text(
                    "Pvt. Ltd",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          ListTile(
              selected: _selected == 4,
              leading: const Icon(
                Icons.apps_outlined,
                size: 30,
              ),
              title: const Text(
                'Alphabets',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage1()),
                );
              }),
              Divider(),
          ListTile(
              selected: _selected == 0,
              leading: const Icon(
                Icons.account_box_outlined,
                size: 30,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              }),
              Divider(),
          ListTile(
              selected: _selected == 1,
              leading: const Icon(
                Icons.contact_page,
                size: 30,
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              }),
              
        ],
      ),
    );
  }
}
