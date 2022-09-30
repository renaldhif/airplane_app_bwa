import 'package:airplane_app_bwa/ui/widgets/destination_card.dart';
import 'package:airplane_app_bwa/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nRenaldhi Fahrezi!',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to Fly Today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.jpg'),
                ),
              ),
            ),
          ],
        ),
      );
    } // widget header

    Widget popularDestinations() {
      // Card
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              //1st
              DestinationCard(
                destinationName: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination_1.png',
                rating: 4.8,
              ),

              //2nd
              DestinationCard(
                destinationName: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/image_destination_2.png',
                rating: 4.7,
              ),

              // 3rd
              DestinationCard(
                destinationName: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination_3.png',
                rating: 4.8,
              ),

              // 4th
              DestinationCard(
                destinationName: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/image_destination_4.png',
                rating: 5.0,
              ),

              // 5th
              DestinationCard(
                destinationName: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_destination_5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              nameNewDestination: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image_destination_6.png',
              rating: 4.5,
            ),
            const DestinationTile(
              nameNewDestination: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination_7.png',
              rating: 4.7,
            ),
            const DestinationTile(
              nameNewDestination: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/image_destination_8.png',
              rating: 4.8,
            ),
            const DestinationTile(
              nameNewDestination: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination_5.png',
              rating: 4.5,
            ),
            const DestinationTile(
              nameNewDestination: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/image_destination_3.png',
              rating: 4.7,
            ),
          ]
        ),

      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
