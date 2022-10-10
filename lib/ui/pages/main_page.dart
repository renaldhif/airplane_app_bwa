import 'package:airplane_app_bwa/cubit/page_cubit.dart';
import 'package:airplane_app_bwa/ui/pages/home_page.dart';
import 'package:airplane_app_bwa/ui/pages/setting_page.dart';
import 'package:airplane_app_bwa/ui/pages/transaction_page.dart';
import 'package:airplane_app_bwa/ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';
import 'package:airplane_app_bwa/ui/widgets/custom_botnav_items.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

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
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),

              // Transaction
              CustomBotNavItem(
                index: 1,
                imageUrl: 'assets/icon_transaction.png',
              ),

              // Credit Card
              CustomBotNavItem(
                index: 2,
                imageUrl: 'assets/icon_creditcard.png',
              ),

              // Settings
              CustomBotNavItem(
                index: 3,
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    } // customBotNav Widget

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBotNav(),
            ],
          ),
        );
      },
    );
  }
}
