import 'package:airplane_app_bwa/shared/theme.dart';
import 'package:airplane_app_bwa/ui/pages/choose_seat_page.dart';
import 'package:airplane_app_bwa/ui/widgets/custom_button.dart';
import 'package:airplane_app_bwa/ui/widgets/interest_item.dart';
import 'package:airplane_app_bwa/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination_1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              // *EMBLEM
              Container(
                width: 108,
                height: 24,
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_emblem.png'),
                  ),
                ),
              ),

              // *TITLE CONTENT
              Container(
                margin: const EdgeInsets.only(top: 256),
                child: Row(
                  children: [
                    // Title Destination
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lake Ciliwung',
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Tangerang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          margin: const EdgeInsets.only(right: 2),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_star.png'),
                            ),
                          ),
                        ),
                        Text(
                          '4.8',
                          style: whiteTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // *DESCRIPTION
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(18),
                ),

                // card description
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // About
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),

                    const SizedBox(
                      height: 6,
                    ),

                    // destination description
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        height: 2,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // photos
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),

                    Row(
                      children: const [
                        PhotoItem(
                          imageUrl: 'assets/image_photo_1.png',
                        ),
                        PhotoItem(
                          imageUrl: 'assets/image_photo_2.png',
                        ),
                        PhotoItem(
                          imageUrl: 'assets/image_photo_3.png',
                        ),
                      ],
                    ),

                    // * Interest
                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Ineterest',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),

                    // interest description
                    Row(
                      children: const [
                        InterestItem(
                          textInterest: 'Kids Park',
                        ),
                        InterestItem(
                          textInterest: 'Honor Bridge',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        InterestItem(
                          textInterest: 'City Museum',
                        ),
                        InterestItem(
                          textInterest: 'Central Mall',
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // * Price and Book Button
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    // PRICE
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 6.942.000',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'per orang',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // BOOK BUTTON
                    CustomButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => const ChooseSeatPage(),
                          ),
                        );
                      },
                      title: 'Book Now',
                      width: 170,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
