import 'package:flutter/material.dart';
import 'package:lettereal/pages/persyaratan/detail_penghasilan.dart'; //5
import 'package:lettereal/pages/persyaratan/detail_sktm_beasiswa.dart'; //4
import 'package:lettereal/pages/persyaratan/detail_sktm_bpjs.dart'; //4
import 'package:lettereal/pages/persyaratan/detail_sktm_jkn_kis.dart'; //4
import 'package:lettereal/pages/persyaratan/detail_domisili.dart'; //1
import 'package:lettereal/pages/persyaratan/detail_kematian.dart'; //3
import 'package:lettereal/pages/persyaratan/detail_usaha.dart'; //2
import 'package:lettereal/widgets/surat_card.dart';

import '../../theme.dart';
import 'main_page.dart';

class PersyaratanPage extends StatelessWidget {
  const PersyaratanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget progres() {
      return ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 0,
                  top: 20,
                  bottom: 250,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      backgroundColor1,
                      backgroundColor2,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Persyaratan',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 57,
                    ),
                    Container(
                      child: Wrap(
                        spacing: 3,
                        alignment: WrapAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailDomisili(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 7,
                              namaSurat: 'Surat Ketarangan Domisili',
                              imageUrl: 'assets/surat2.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSuratUsaha(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 9,
                              namaSurat: 'Surat Keterangan Usaha',
                              imageUrl: 'assets/failed-hero.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSuratKematian(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 5,
                              namaSurat: 'Surat Keterangan Kematian',
                              imageUrl: 'assets/success-hero.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmJknKis(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 1,
                              namaSurat:
                                  'Surat Keterangan Tidak Mampu (JKN/KIS)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmJBeasiswa(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 2,
                              namaSurat:
                                  'Surat Keterangan Tidak Mampu (Beasiswa)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmBpjs(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 3,
                              namaSurat: 'Surat Keterangan Tidak Mampu (BPJS)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPenghasilanOrtu(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 6,
                              namaSurat:
                                  'Surat Keterangan Penghasilan Orang Tua',
                              imageUrl: 'assets/surat3.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

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
      body: progres(),
    );
  }
}
