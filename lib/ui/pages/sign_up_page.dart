import 'package:airplane_app_bwa/ui/widgets/custom_button.dart';
import 'package:airplane_app_bwa/ui/widgets/custom_textformfield.dart';
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
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    // Input Section Widget
    Widget inputSection() {
      // Full Name Widget
      Widget nameInput() {
        return const CustomTextFormField(
          title: 'Full Name',
          hintText: 'John Doe',
        );
      } // nameInput

      // Email Widget
      Widget emailInput() {
        return const CustomTextFormField(
          title: 'Email',
          hintText: 'johndoe@email.com',
        );
      } // emailInput

      // Password Widget
      Widget passwordInput() {
        return const CustomTextFormField(
          title: 'Password',
          hintText: 'Password',
          obsecureText: true,
        );
      } // passwordInput

      // Hobby Widget
      Widget hobbyInput() {
        return const CustomTextFormField(
          title: 'Hobby',
          hintText: 'Travelling',
        );
      } // hobbyInput

      // Submit Button Widget
      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
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
            tncButton(),
          ],
        ),
      ),
    );
  }
}
