
import 'package:flutter/material.dart';
import 'package:tennis_app/ui/widgets/atoms/match_status_chip.dart';
import 'package:tennis_app/utils/image_paths.dart';

class MatchesCard extends StatelessWidget {
  final String tournament;
  final String tennisAssociation;
  final String round;
  final String time;
  final String player1;
  final String player2;
  final IconData? chipIcon;
  final String? chipLabel;
  final Color? chipIconColor;
  final Color? chipBackgroundColor;


  const MatchesCard({Key? key,
      required this.tournament,
      required this.tennisAssociation,
    required this.round,
    required this.time,
    required this.player1,
    required this.player2,
      this.chipIcon,
      this.chipLabel,
      this.chipIconColor,
      this.chipBackgroundColor}):super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 340,
      //margin: const EdgeInsets.symmetric(horizontal: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
            image: AssetImage(ImagePaths.topMatchCard),
            fit:BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RichText(
              text: TextSpan(
                text: '$tournament \u{FF65} ',
                style: const TextStyle(fontSize: 12, color: Colors.white),
                children: [

                  TextSpan(
                    text: "$tennisAssociation \u{FF65} ",
                  ),

                  TextSpan(
                    text: "$round \u{FF65} ",
                  ),

                  const WidgetSpan(
                    child: Icon(Icons.access_time, size: 16, color: Colors.white,),
                  ),
                  TextSpan(
                    text: time,
                  ),
                ],

              ),
            ),
          ),
          const SizedBox(height: 15,),

          Text( player1,
            style: const TextStyle(fontSize: 22, color: Colors.white),),
          const SizedBox(height: 7,),
          Text(player2,
            style: const TextStyle(fontSize: 22, color: Colors.white),),

          const Spacer(flex: 3,),

          MatchStatusChip(
            icon: chipIcon,
            iconColor: chipIconColor,
            label: chipLabel,
            backgroundColor: chipBackgroundColor,

          ),



        ],
      ),
    );
  }
}
