import 'package:airplane_app_bwa/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailItem extends StatelessWidget {
  final title, textValue, colorValue;
  const BookingDetailItem({
    required this.title,
    required this.textValue,
    required this.colorValue,
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            textValue,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: colorValue,
            ),
          ),
        ],  
      ),
    );
  }
}
