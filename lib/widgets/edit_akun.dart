import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lettereal/pages/main_page/main_page.dart';

import '../../theme.dart';
import 'package:file_picker/file_picker.dart';

class EditAkun extends StatefulWidget {
  const EditAkun({Key? key}) : super(key: key);

  @override
  _EditAkunState createState() => _EditAkunState();
}

class _EditAkunState extends State<EditAkun> {
  File? filePickerVal;
  final _formKey = GlobalKey<FormState>();
  var txtFilePicker = TextEditingController();

  Widget namaInput() {
    return Container(
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
            height: 12,
          ),
          Container(
            height: 65,
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Nama terbaru Anda',
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
            height: 12,
          ),
          Container(
            height: 65,
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'NIK harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Masukkan NIK terbaru Anda',
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
            height: 12,
          ),
          Container(
            height: 65,
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password harus diisi!';
                          }
                          return null;
                        },
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Password terbaru Anda',
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

  Widget buildFilePicker() {
    return Container(
      margin: EdgeInsets.only(top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Foto Profil',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  '(*Format JPG)',
                  style: secondaryTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 65,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: primaryColor),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                      readOnly: true,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'File harus diupload';
                        } else {
                          return null;
                        }
                      },
                      controller: txtFilePicker,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Upload File',
                      ),
                      style: const TextStyle(fontSize: 16.0)),
                ),
                const SizedBox(width: 5),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.upload_file,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  label: const Text('Pilih File',
                      style: TextStyle(fontSize: 16.0)),
                  onPressed: () {
                    selectFile();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(122, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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

  Widget btnAjukan() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pushNamed(context, '/berhasilubah');
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Simpan',
          style: buttonTitleTextStyle.copyWith(
            fontSize: 15,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  selectFile() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['jpg']);
    if (result != null) {
      setState(() {
        txtFilePicker.text = result.files.single.name;
        filePickerVal = File(result.files.single.path.toString());
      });
    } else {
    }
  }

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
                    Text(
                      'Kembali',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                        color: primaryColor,
                      ),
                    ),
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(defaultMargin),
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
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Line-Top.png',
                            width: 90,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Form(
                        key: _formKey,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 15,
                          ),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: formColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Edit Profil',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 41,
                              ),
                              namaInput(),
                              nikInput(),
                              passwordInput(),
                              buildFilePicker(),
                              btnAjukan(),
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
