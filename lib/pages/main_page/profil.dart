import 'package:flutter/material.dart';
import 'package:lettereal/theme.dart';

import 'main_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: backgroundColor2,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 33,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/back.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Kembali',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 18,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/login.png',
                      width: 121,
                      height: 109,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  backgroundColor1,
                  backgroundColor2,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Profil',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 50, 
                    backgroundImage: AssetImage('assets/pp.jpg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Jay',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '1123345567789910',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, color: primaryColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 50,
                  width:
                      MediaQuery.of(context).size.width - (2 * defaultMargin),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/editakun', (route) => false);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        width: 1.5,
                        color: primaryColor,
                      ),),
                    ),
                    child: Text(
                      'Edit Profil',
                      style: buttonTitleTextStyle.copyWith(
                        color: primaryColor,
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width:
                      MediaQuery.of(context).size.width - (2 * defaultMargin),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/reg', (route) => false);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Keluar',
                      style: buttonTitleTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
