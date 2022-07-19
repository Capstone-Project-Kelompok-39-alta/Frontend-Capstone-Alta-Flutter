import 'package:flutter/material.dart';

import 'package:kelompok39/Screens/Home/home_screen.dart';
import 'package:kelompok39/Screens/Invoice/invoice_screen.dart';
import 'package:kelompok39/Screens/Profile/profile_screen.dart';
import 'package:kelompok39/Screens/Transaction/transaction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelompok39/constants.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List pages = [
    HomeScreen(),
    InvoiceScreen(),
    TransactionScreen(),
    ProfileScreen(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        backgroundColor: cPrimary1,
        currentIndex: currentIndex,
        selectedItemColor: cLight1,
        unselectedItemColor: cLight4,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 20,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/icons/IconLight1White/Name=Home.svg'),
            icon: SvgPicture.asset('assets/icons/IconLight1White/Name=Home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/icons/IconLight1White/Name=Category.svg'),
            icon: SvgPicture.asset('assets/icons/IconLight1White/Name=Category.svg'),
            label: "Invoice",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/icons/IconLight1White/Name=Bill.svg'),
            icon: SvgPicture.asset('assets/icons/IconLight1White/Name=Bill.svg'),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/icons/IconLight1White/Name=Profile.svg'),
            icon: SvgPicture.asset('assets/icons/IconLight1White/Name=Profile.svg'),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
