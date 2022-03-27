
import 'package:flutter/material.dart';
import 'package:tennis_app/models/app_stock_data.dart';
import 'package:tennis_app/models/match_score.dart';
import 'package:tennis_app/ui/widgets/atoms/tournament_rounds_box.dart';
import 'package:tennis_app/ui/widgets/molecules/match_scores_card.dart';
import 'package:tennis_app/utils/colors.dart';

import '../../utils/image_paths.dart';
import '../../utils/routes.dart';

class TournamentDetailsPage extends StatefulWidget {
  const TournamentDetailsPage({Key? key}) : super(key: key);

  @override
  _TournamentDetailsPageState createState() => _TournamentDetailsPageState();
}

class _TournamentDetailsPageState extends State<TournamentDetailsPage> {

  List<Widget> matchScores = List.generate(AppStockData.matchScores.length, (index) {
    MatchScore matchScore = AppStockData.matchScores[index];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: MatchScoresCard(
            round: matchScore.round,
            arena: matchScore.arena,
            playStatus: matchScore.playStatus,
            player1Name: matchScore.player1Name,
            player2Name: matchScore.player2Name,
            player1Scores: matchScore.player1Scores,
            player2Scores: matchScore.player2Scores,
            player1LiveGameScore: matchScore.player1LiveGameScore,
            player2LiveGameScore: matchScore.player2LiveGameScore,
            player1Avatar: ImagePaths.player1s[index+1],
            player2Avatar: ImagePaths.player2s[index+1],
            player1DidWin: matchScore.player1DidWin),
      );}
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(

        title: const Text("Australian Open", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12,),


                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("All Matches"),
                      Icon(Icons.keyboard_arrow_down, size: 8, color: Colors.black,),
                    ],
                  ),
                  onTap: ()=> showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                        ),
                      ),
                      builder: (context){
                        return showModalBottomSheetContent();
                      }
                  ),
                ),

                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(AppStockData.tournamentRounds.length, (index) {
                    return TournamentRoundsBox(
                      tournamentRound: AppStockData.tournamentRounds[index],
                      boxColor: index==0 ? AppColors.appLightGreen: null,
                      textColor: index==0 ? Colors.white: Colors.grey,
                    );
                  }),

                ),

                const SizedBox(height: 20,),
                InkWell(
                  onTap: ()=> Navigator.pushNamed(context, Routes.matchDetailsPage),
                  child: MatchScoresCard(
                      round: "Final",
                      arena: "Rod Laver Arena",
                      playStatus: "Live",
                      player1Name: "R. Nadal",
                      player2Name: "D. Medvedev",
                      player1Scores: "2  6  6  6",
                      player2Scores: "6  7  4  4",
                      player1LiveGameScore: "7",
                      player2LiveGameScore: "5",
                      player1Avatar: ImagePaths.player1s[0],
                      player2Avatar: ImagePaths.player2s[0],
                      player1DidWin: null

                  ),
                ),
                const SizedBox(height: 8,),

                ...matchScores,




              ],
            ),
          )
      ),

    );
  }

  Widget showModalBottomSheetContent(){
    return  SafeArea(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children:  <Widget>[
          ListTile(
            trailing: Icon(Icons.clear),
            //leading: const Icon(Icons.photo),
            title:  Center(child: const Text('          SELECT EVENT')),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          const Divider(),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(AppStockData.tournamentEvents.length, (index) {
              return ListTile(
                title: Center(
                  child: Text(
                      AppStockData.tournamentEvents[index],
                    ),
                ),
              );
            }),
          ),

          // const ListTile(
          //   leading: Icon(Icons.arrow_forward),
          //   title:  Text('Dial *110#'),
          //   // onTap: () {
          //   //   Navigator.pop(context);
          //   // },
          // ),
          // const ListTile(
          //   leading:  Icon(Icons.arrow_forward),
          //   title:  Text('Choose option 4- (Make Payments)'),
          //   // onTap: () {
          //   //   Navigator.pop(context);
          //   // },
          // ),
          // const ListTile(
          //   leading:  Icon(Icons.arrow_forward),
          //   title:  Text('Choose option 4- (Generate Voucher)'),
          //   // onTap: () {
          //   //   Navigator.pop(context);
          //   // },
          // ),
          // const ListTile(
          //   leading:  Icon(Icons.arrow_forward),
          //   title:  Text('Enter Your Vodafone Cash Pin'),
          //   // onTap: () {
          //   //   Navigator.pop(context);
          //   // },
          // ),
          //
          // const ListTile(
          //   leading:  Icon(Icons.arrow_forward),
          //   title:  Text('A 6-digit Voucher Code will be sent to you via SMS.'),
          //   // onTap: () {
          //   //   Navigator.pop(context);
          //   // },
          // ),

        ],
      ),
    );

  }
}
