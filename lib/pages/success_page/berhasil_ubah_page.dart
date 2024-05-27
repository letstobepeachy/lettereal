import 'package:flutter/material.dart';
import 'package:lettereal/theme.dart';

class BerhasilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        padding: EdgeInsets.all(
          defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/success-hero.png',
                    width: 224,
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'Data Anda berhasil diubah!',
                style: primaryTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    Widget btnSelesai() {
      return Container(
        height: 50,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: EdgeInsets.only(top: 20),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profil');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'Selesai',
            style: buttonTitleTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              content(),
              btnSelesai(),
            ],
          ),
        ),
      ),
    );
  }
}
