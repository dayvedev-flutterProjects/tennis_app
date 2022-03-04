import 'package:flutter/material.dart';
import 'package:tennis_app/utils/colors.dart';

class MatchScoresCard extends StatelessWidget {
  final String round;
  final String arena;
  final String playStatus;
  final String player1Name;
  final String player2Name;
  final String? player1Scores;
  final String? player2Scores;
  final String? player1LiveGameScore;
  final String? player2LiveGameScore;
  final String player1Avatar;
  final String player2Avatar;
  final bool? player1DidWin;

  const MatchScoresCard({Key? key,
    required this.round,
    required this.arena,
    required this.playStatus,
    required this.player1Name,
    required this.player2Name,
    this.player1Scores,
    this.player2Scores,
    this.player1LiveGameScore,
    this.player2LiveGameScore,
    required this.player1Avatar,
    required this.player2Avatar,
    required this.player1DidWin,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      padding: const EdgeInsets.only(top:10.0, bottom: 12.0, right: 8.0),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(17),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: '$round \u{FF65} ',
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                    children: [

                      TextSpan(
                        text: "$arena",
                      ),

                      // TextSpan(
                      //   text: "$round \u{FF65} ",
                      // ),
                      //
                      // const WidgetSpan(
                      //   child: Icon(Icons.access_time, size: 16, color: Colors.white,),
                      // ),
                      // TextSpan(
                      //   text: time,
                      // ),
                    ],

                  ),
                ),

                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    //text: '1st Round \u{FF65} ',
                    style: const TextStyle(fontSize: 12,
                      color: Colors.black,

                    ),
                    children: [
                      playStatus.toLowerCase() == 'live' ? const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.0, right: 4),
                          child: Icon(Icons.circle, size: 8, color: Colors.red,),
                        ),
                      ) : const WidgetSpan(child: SizedBox()),

                      TextSpan(
                        text: playStatus,
                        style: TextStyle(color: playStatus.toLowerCase() == 'live' ? Colors.red: Colors.black54),
                      ),

                      // TextSpan(
                      //   text: "$round \u{FF65} ",
                      // ),
                      //
                      // const WidgetSpan(
                      //   child: Icon(Icons.access_time, size: 16, color: Colors.white,),
                      // ),
                      // TextSpan(
                      //   text: time,
                      // ),
                    ],

                  ),
                ),

              ],
            ),
          ),

          Divider(),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 32,
                width: 3,
                color: player1DidWin == null ? Colors.white: player1DidWin == true ? AppColors.appLightGreen : Colors.white,
              ),
              Expanded(
                child: ListTile(
                  dense:true,

                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(player1Avatar),
                  ),
                  title: Text("$player1Name"),
                  // subtitle: Text("ATP"),
                  trailing: SizedBox(
                       width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(player1Scores?? "",
                            style: TextStyle(
                                fontWeight: player1DidWin == true? FontWeight.bold: FontWeight.normal ,
                                //color: Colors.red
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(player1LiveGameScore?? "", style: const TextStyle(color: Colors.red),),
                          ),

                        ],
                      )
                  ),
                ),
              ),
            ],
          ),

          Divider(),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 32,
                width: 3,
                color: player1DidWin == null ? Colors.white: player1DidWin == false ? AppColors.appLightGreen : Colors.white,
              ),

              Expanded(
                child: ListTile(
                  dense:true,

                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(player2Avatar),
                  ),
                  title: Text("$player2Name"),
                  // subtitle: Text("ATP"),
                  trailing: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(player2Scores?? "",
                            style: TextStyle(
                              fontWeight: player1DidWin == false? FontWeight.bold: FontWeight.normal ,
                              //color: Colors.red
                            ),),
                          // player2LiveGameScore == null ?
                          // Text(player2LiveGameScore?? "", style: const TextStyle(color: Colors.red),):
                          //     SizedBox(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(player2LiveGameScore?? "", style: const TextStyle(color: Colors.red),),
                          ),

                        ],
                      )
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
