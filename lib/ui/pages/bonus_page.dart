import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bonus Card Widget
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: const Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                      Text(
                        'Renaldhi Fahrezi',
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 41),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14, 
                fontWeight: light
              ),
            ),
            Text(
              'IDR 694.206.942.0',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    // Headline Widget
    Widget headline() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    // subtitle Widget
    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\n you can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    // widget flyButton
    Widget flyButton() {
      return Container(
        width: 220,
        height: 55,
        margin: const EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(17)),
            ),
          ),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            headline(),
            subTitle(),
            flyButton(),
          ],
        ),
      ),
    );
  }
}
