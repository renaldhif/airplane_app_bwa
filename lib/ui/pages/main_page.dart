import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

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
            children: [
              // Column for Home Icon
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_home.png'),
                      ),
                    ),
                  ),

                  // Container for Indicator
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                ],
              ),

              // Column for Transaction Icon
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_transaction.png'),
                      ),
                    ),
                  ),

                  // Container for Indicator
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                ],
              ),

              // Column for CreditCard Icon
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_creditcard.png'),
                      ),
                    ),
                  ),

                  // Container for Indicator
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                ],
              ),

              // Column for Settings Icon
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_setting.png'),
                      ),
                    ),
                  ),

                  // Container for Indicator
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                ],
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
