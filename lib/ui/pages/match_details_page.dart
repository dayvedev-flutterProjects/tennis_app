import 'package:badges/badges.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tennis_app/models/match_score.dart';
import 'package:tennis_app/ui/widgets/atoms/tournament_rounds_box.dart';
import 'package:tennis_app/utils/image_paths.dart';

import '../../utils/colors.dart';
import '../widgets/molecules/match_scores_card.dart';

class MatchDetailsPage extends StatefulWidget {
  final MatchScore? matchScore;
  const MatchDetailsPage({Key? key, this.matchScore}) : super(key: key);

  @override
  _MatchDetailsPageState createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("R. Nadal v D. Medvedev", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),

      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ImagePaths.matchScoreDetailsHeader),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100,),
                        Center(child: Text("Men's Singles \u{FF65} 1st Round")),
                        const SizedBox(height: 10,),

                        Center(child: Text("Complete \u{FF65} 2h.30m")),

                        const SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Badge(
                              elevation: 0,
                              badgeColor: Colors.transparent,
                              position: BadgePosition.bottomEnd(bottom: -4, end: -5),
                              badgeContent: ClipRRect(
                                borderRadius: BorderRadius.circular(14.0),
                                //radius: 15,
                                //backgroundColor: Colors.transparent,
                                child: Flag.fromString("AU",
                                  height: 28,
                                  width: 28,
                                  flagSize: FlagSize.size_1x1,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                child: Icon(Icons.person_outline),
                              ),

                            ),
                            Badge(
                              elevation: 0,
                              badgeColor: Colors.transparent,
                              position: BadgePosition.bottomEnd(bottom: -4, end: -5),
                              badgeContent: ClipRRect(
                                borderRadius: BorderRadius.circular(14.0),
                                //radius: 15,
                                //backgroundColor: Colors.transparent,
                                child: Flag.fromString("AU",
                                  height: 28,
                                  width: 28,
                                  flagSize: FlagSize.size_1x1,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                child: Icon(Icons.person_outline),
                              ),

                            ),

                          ],
                        ),
                        const SizedBox(height: 10,),

                        Center(
                          child: Chip(
                            label: Text("Rod Lavel Arena", style: TextStyle(color: Colors.white),),
                            backgroundColor: Colors.black38.withOpacity(0.4), // grey[600],
                            labelPadding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: -1),

                          ),
                        ),
                        const SizedBox(height: 40,),

                      ],


                    ),
                  ),

                  const SizedBox(height: 100,),



                  Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TournamentRoundsBox(
                              minHeight: 45,
                              minWidth: 45,
                              tournamentRound: "12",
                              boxColor: AppColors.appLightGreen,
                              textColor: Colors.white,

                            ),

                            Center(
                              child: Text("Aces",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                            ),

                            TournamentRoundsBox(
                              minHeight: 45,
                              minWidth: 45,
                              tournamentRound: "8",
                              boxColor: AppColors.appLightGreen,
                              textColor: Colors.white,
                            ),

                          ],
                        ),

                        const SizedBox(height: 8,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TournamentRoundsBox(
                              minHeight: 45,
                              minWidth: 45,
                              tournamentRound: "12",
                              boxColor: AppColors.appLightGreen,
                              textColor: Colors.white,
                            ),

                            Center(
                              child: Text("Double Faults",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                            ),

                            TournamentRoundsBox(
                              minHeight: 45,
                              minWidth: 45,
                              tournamentRound: "8",
                              boxColor: AppColors.appLightGreen,
                              textColor: Colors.white,
                            ),

                          ],
                        ),

                        const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Divider(),
                        ),

                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("74%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("1st serve in",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("69%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    LinearPercentIndicator(
                                      width: 160.0,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.74,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: Colors.red[200],
                                    ),

                                    LinearPercentIndicator(
                                      width: 160.0,
                                      isRTL: true,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.69,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: AppColors.appLightGreen ,
                                    ),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("48/65",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.black38),),

                                    Text("81/117",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black38),),
                                  ],

                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("74%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("Win 1st serve",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("69%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    LinearPercentIndicator(
                                      width: 160.0,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.74,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: Colors.red[200],
                                    ),

                                    LinearPercentIndicator(
                                      width: 160.0,
                                      isRTL: true,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.69,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: AppColors.appLightGreen ,
                                    ),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("48/65",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.black38),),

                                    Text("81/117",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black38),),
                                  ],

                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("74%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("Win 2nd serve",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                    Text("69%",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    LinearPercentIndicator(
                                      width: 160.0,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.74,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: Colors.red[200],
                                    ),

                                    LinearPercentIndicator(
                                      width: 160.0,
                                      isRTL: true,
                                      animation: true,
                                      animationDuration: 1000,
                                      lineHeight: 10.0,
                                      //leading: Text("Cumulative Progress: "),
                                      percent: 0.69,
                                      //center: Text("20.0%"),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: AppColors.appLightGreen ,
                                    ),
                                  ],

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("48/65",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.black38),),

                                    Text("81/117",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black38),),
                                  ],

                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
              Positioned(
                top: 325,
                width: 390,
                child: MatchScoresCard(
                  round: "1st Round",
                  arena: "Court 7",
                  playStatus: "Live",
                  player1Avatar: "",
                  player1Name: "R. Nadal",
                  player1Scores: "3  7  6  7",
                  // player1Scores: "3  7",
                  player2Name: "D. Medvedev",
                  player2Scores: "6  5  3  6",
                  // player2Scores: "6  6",

                  player2Avatar: "",
                  player1DidWin: true,

                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

}