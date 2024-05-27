import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lettereal/theme.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  File? filePickerVal;
  final _formKey = GlobalKey<FormState>();
  var txtFilePicker = TextEditingController();

  Widget namaInput() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12
      ),
      margin: EdgeInsets.only(top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Text(
              'Nama',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: primaryColor),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Nama Anda',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 50, 175, 180),
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget nikInput() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12
      ),
      margin: EdgeInsets.only(top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Text(
              'NIK',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: primaryColor),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'NIK harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Masukkan NIK Anda',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 50, 175, 180),
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12
      ),
      margin: EdgeInsets.only(top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: primaryColor),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Password Anda',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 50, 175, 180),
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget btnDaftar() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pushNamed(context, '/login');
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Daftar',
          style: buttonTitleTextStyle.copyWith(
            fontSize: 15,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget btnMasuk() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Masuk',
          style: buttonTitleTextStyle.copyWith(
            fontSize: 15,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget punyaAkun() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Center(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        SizedBox(height: 10),
          Text(
            'Sudah memiliki akun?',
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
        ],),
      ),
    );
  }
  
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset(
                  'assets/login.png',
                  height: 150,
                  width: 217,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  'Registrasi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                width:
                    MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: Center(
                  child: Text(
                    'Lengkapi data untuk memulai aplikasi',
                    style: secondaryTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 15,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              header(),
                              namaInput(),
                              nikInput(),
                              passwordInput(),
                              btnDaftar(),
                              punyaAkun(),
                              btnMasuk()
                            ],
                          ),
                        ),
                      )
                    ],
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
