import 'package:flutter/material.dart';
import 'package:kelompok39/Screens/Home/home_screen.dart';
import 'package:kelompok39/Screens/Invoice/invoice_screen.dart';
import 'package:kelompok39/Screens/Profile/profile_screen.dart';
import 'package:kelompok39/Screens/Transaction/transaction_screen.dart';
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_weight_outlined),
            label: "Invoice",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
