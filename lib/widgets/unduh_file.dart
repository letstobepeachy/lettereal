// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lettereal/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class UnduhFile extends StatelessWidget {
  const UnduhFile({Key? key}) : super(key: key);

  final String viewUrl = 'https://drive.google.com/file/d/1PEscywVLrD82U75r3uATjc_6bI8VJh27/view?usp=sharing';
  final String downloadUrl = 'https://drive.google.com/uc?export=download&id=1PEscywVLrD82U75r3uATjc_6bI8VJh27';

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      height: 83,
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Surat Keterangan Domisili',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: () => _launchURL(viewUrl),
                  child: Text(
                    'Lihat surat',
                    style: secondaryTextStyle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () => _launchURL(downloadUrl),
                  child: Text(
                    'Unduh surat',
                    style: secondaryTextStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
