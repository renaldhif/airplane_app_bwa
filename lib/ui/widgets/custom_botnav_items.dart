import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';

class CustomBotNavItem extends StatelessWidget {
  
  final String imageUrl;
  final bool isSelected;
  
  const CustomBotNavItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),

        // Container for Indicator
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
