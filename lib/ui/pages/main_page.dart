import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';
import 'package:airplane_app_bwa/ui/widgets/custom_botnav_items.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Custom Bottom Navigation Bar Widget
    Widget customBotNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              // Home
              CustomBotNavItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),

              // Transaction
              CustomBotNavItem(
                imageUrl: 'assets/icon_transaction.png',
              ),

              // Credit Card
              CustomBotNavItem(
                imageUrl: 'assets/icon_creditcard.png',
              ),
              
              // Settings
              CustomBotNavItem(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    } // customBotNav Widget

    return Scaffold(
      body: Stack(
        children: [
          customBotNav(),
        ],
      ),
    );
  }
}
