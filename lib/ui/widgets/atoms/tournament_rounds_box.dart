
import 'package:flutter/material.dart';
import 'package:tennis_app/utils/colors.dart';

class TournamentRoundsBox extends StatelessWidget {
  final double? minHeight;
  final double? minWidth;
  final String tournamentRound;
  final Color? boxColor;
  final Color? textColor;

  const TournamentRoundsBox(
      {Key? key, this.minHeight, this.minWidth, required this.tournamentRound,
        this.boxColor, this.textColor,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: boxColor?? Colors.grey[200]),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: minHeight?? 30, minWidth: minWidth?? 30 ),
        child:  Center(
          widthFactor: 2,
          heightFactor: 2,
          child: Text(tournamentRound,
            style: TextStyle( fontWeight: FontWeight.bold, color: textColor?? Colors.grey),),
        ),
      ),
    );
  }
}
