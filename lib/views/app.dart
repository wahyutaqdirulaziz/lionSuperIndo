import "package:flutter/material.dart";
import 'package:super_indo/untilities/theme.dart';
import 'package:super_indo/views/hompage/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(
      child: Text("@WAHYUDEVLOMBOK",
          style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium)),
    ),
    Center(
      child: Text("@WAHYUDEVLOMBOK",
          style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium)),
    ),
    Center(
      child: Text("@WAHYUDEVLOMBOK",
          style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium)),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon/Home.png",
              color: _selectedIndex == 0 ? kPrimaryColor : kGreyColor,
            ),
            label: 'Home',
            backgroundColor: kBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon/Heart.png",
              color: _selectedIndex == 1 ? kPrimaryColor : kGreyColor,
            ),
            label: 'Wishlist',
            backgroundColor: kBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon/Paper.png",
              color: _selectedIndex == 2 ? kPrimaryColor : kGreyColor,
            ),
            label: 'History',
            backgroundColor: kBackgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icon/Profile.png",
              width: 27,
              color: _selectedIndex == 3 ? kPrimaryColor : kGreyColor,
            ),
            label: 'Account',
            backgroundColor: kBackgroundColor,
          ),
        ],
        elevation: 5,
        selectedLabelStyle: greenTextStyle.copyWith(fontSize: 10),
        unselectedLabelStyle: greyTextStyle.copyWith(fontSize: 10),
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGreyColor,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
