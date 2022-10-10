import 'package:airplane_app_bwa/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomBotNavItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBotNavItem({
    super.key,
    required this.index,
    required this.imageUrl,

  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl, 
            width: 24, 
            height: 24,
            color: context.read<PageCubit>().state == index 
            ? kPrimaryColor 
            : kGreyColor,
          ), 
    
          // Container for Indicator
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index 
              ? kPrimaryColor 
              : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
