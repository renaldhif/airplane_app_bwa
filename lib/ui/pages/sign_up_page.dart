import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Title Widget
    Widget title() {
      return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text('Join us and get \nyour next journey',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              )));
    }

    // Input Section Widget
    Widget inputSection() {
      // Full Name Widget
      Widget nameInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Full Name'),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'John Doe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      } // nameInput

      // Email Widget
      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'johndoe@email.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      } // emailInput

      // Password Widget
      Widget passwordInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Password'),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      } // passwordInput

      // Hobby Widget
      Widget hobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hobby'),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your Hobby',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      } // hobbyInput

      // Submit Button Widget
      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
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
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    // TnC Widget

    Widget tncButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tncButton()
          ],
        ),
      ),
    );
  }
}
