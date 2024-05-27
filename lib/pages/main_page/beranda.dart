import 'package:flutter/material.dart';
import 'package:lettereal/pages/form_pengajuan/form_sktm.dart';
import 'package:lettereal/pages/form_pengajuan/form_surat_domisili.dart';
import 'package:lettereal/pages/form_pengajuan/form_surat_kematian.dart';
import 'package:lettereal/pages/form_pengajuan/form_surat_penghasilan.dart';
import 'package:lettereal/pages/form_pengajuan/form_surat_usaha.dart';
import 'package:lettereal/theme.dart';
import 'package:lettereal/widgets/surat_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          left: 32,
          right: 32,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16.5, 
              backgroundImage: AssetImage('assets/pp.jpg'),
            ),
            SizedBox(
              width: 11,
            ),
            Text(
              "Jay",
              style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18)
            ),
          ],
        ),
      );
    }

    Widget surat() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              backgroundColor1,
              backgroundColor2,
            ],
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hallo!',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Ingin mengajukan surat apa hari ini?',
                    style: blueTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 3,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormDomisili(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 1,
                          namaSurat: 'Surat Keterangan Domisili',
                          imageUrl: 'assets/surat2.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormUsaha(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 2,
                          namaSurat: 'Surat Keterangan Usaha',
                          imageUrl: 'assets/failed-hero.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormKehilangan(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 3,
                          namaSurat: 'Surat Keterangan Kematian',
                          imageUrl: 'assets/success-hero.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormSktm(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 4,
                          namaSurat: 'Surat Keterangan Tidak Mampu',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormPekerjaan(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 5,
                          namaSurat: 'Surat Keterangan Penghasilan Orang Tua',
                          imageUrl: 'assets/surat3.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      color: backgroundColor2, // Mengatur warna latar belakang
      child: SafeArea(
      child: ListView(
        children: [
          header(),
          SizedBox(
            height: 38,
          ),
          surat(),
        ],
      ),),
    );
  }
}
