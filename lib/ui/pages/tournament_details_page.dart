
import 'package:flutter/material.dart';
import 'package:tennis_app/models/app_stock_data.dart';
import 'package:tennis_app/ui/widgets/atoms/tournament_rounds_box.dart';
import 'package:tennis_app/ui/widgets/molecules/match_scores_card.dart';
import 'package:tennis_app/utils/colors.dart';

class TournamentDetailsPage extends StatefulWidget {
  const TournamentDetailsPage({Key? key}) : super(key: key);

  @override
  _TournamentDetailsPageState createState() => _TournamentDetailsPageState();
}

class _TournamentDetailsPageState extends State<TournamentDetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(height: 25,),


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
                      textColor: index==0 ? Colors.white: Colors.grey[200],
                    );
                  }),

                ),

                MatchScoresCard(),

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