import 'package:flutter/material.dart';
import 'package:tennis_app/utils/colors.dart';

class MatchStatusChip extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final Color? iconColor;
  final Color? backgroundColor;

  const MatchStatusChip({Key? key,
      this.icon, this.label, this.iconColor, this.backgroundColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon?? Icons.circle, size: 10, color: iconColor?? Colors.red,),
      labelPadding: const EdgeInsets.symmetric(horizontal: 1.0,),
      backgroundColor: backgroundColor?? AppColors.appDarkGreen,
      padding: const EdgeInsets.only(right: 10),
      label: Text( label ?? "Live", style:
      const TextStyle(
          fontSize: 13,
          color: Colors.white),),
    );
  }
}


