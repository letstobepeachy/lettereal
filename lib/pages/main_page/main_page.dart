import 'package:flutter/material.dart';
import 'package:lettereal/pages/main_page/beranda.dart';
import 'package:lettereal/pages/main_page/persyaratan.dart';
import 'package:lettereal/pages/main_page/riwayat.dart';
import 'package:lettereal/pages/main_page/profil.dart';
import 'package:lettereal/pages/main_page/unduh.dart';
import 'package:lettereal/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home.png',
                width: 24,
                color: currentIndex == 0 ? primaryColor : greyColor,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/syarat.png',
                width: 24,
                color: currentIndex == 1 ? primaryColor : greyColor,
              ),
              label: 'Persyaratan',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/progres.png',
                width: 24,
                color: currentIndex == 2 ? primaryColor : greyColor,
              ),
              label: 'Riwayat',
            ),
             BottomNavigationBarItem(
              icon: Image.asset(
                'assets/dl.png',
                width: 24,
                color: currentIndex == 3 ? primaryColor : greyColor,
              ),
              label: 'Unduh',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile.png',
                width: 24,
                color: currentIndex == 4 ? primaryColor : greyColor,
              ),
              label: 'Profil',
            ),
          ]);
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          // ignore: dead_code
          break;
        case 1:
          return PersyaratanPage();
          // ignore: dead_code
          break;
        case 2:
          return ProgresPage();
          // ignore: dead_code
          break;
        case 3:
          return UnduhPage();
          // ignore: dead_code
          break;
        case 4:
          return ProfilePage();
          // ignore: dead_code
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
