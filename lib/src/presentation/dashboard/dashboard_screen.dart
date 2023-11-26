import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/uidata.dart';

import '../home/home_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            _currentIdx = idx;
          });
        },
        currentIndex: _currentIdx,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xff212426),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xff6C7278),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.icHome)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.icDiscover)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.icStatusUp)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(UIData.icSetting)),
            label: '',
          ),
        ],
      ),
      body: const HomePage(),
    );
  }
}
