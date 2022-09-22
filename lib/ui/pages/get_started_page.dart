import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            // Container(
            width: double.infinity,
            height: double.infinity,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/image_get_started.png')),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Explore new world with us and let yourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 220,
                height: 55,
                margin: const EdgeInsets.only(top: 50, bottom: 80),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
