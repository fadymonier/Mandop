import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandoob/core/theme/theme_provider.dart';
import 'package:mandoob/core/utils/app_colors.dart';

import 'package:mandoob/features/home/presentation/widgets/home_body.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const ContentListView(),
    const Score(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.buttonColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6_rounded),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: AppColors.scaffoldBackgroundColor,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.whtieColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
