import 'package:flutter/material.dart';
import 'package:lettereal/pages/main_page/main_page.dart';
import 'package:lettereal/pages/main_page/persyaratan.dart';
import 'package:lettereal/pages/main_page/profil.dart';
import 'package:lettereal/pages/main_page/riwayat.dart';
import 'package:lettereal/pages/main_page/unduh.dart';
import 'package:lettereal/pages/login_page.dart';
import 'package:lettereal/pages/registrasi_page.dart';
import 'package:lettereal/pages/splashscreen_page.dart';
import 'package:lettereal/pages/success_page/berhasil_ubah_page.dart';
import 'package:lettereal/pages/success_page/success_page.dart';
import 'package:lettereal/widgets/edit_akun.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/reg':(context) => RegPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => MainPage(),
        '/succses': (context) => SuccsesPage(),
        '/persyaratan':(context) => PersyaratanPage(),
        '/progress': (context) => ProgresPage(),
        '/unduh':(context) => UnduhPage(),
        '/profil':(context) => ProfilePage(),
        '/editakun':(context) => EditAkun(),
        '/berhasilubah':(context) => BerhasilPage()
      },
    );
  }
}
