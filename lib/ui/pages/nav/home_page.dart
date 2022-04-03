import 'package:carousel_slider/carousel_slider.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tennis_app/models/app_stock_data.dart';
import 'package:tennis_app/models/top_matches.dart';
import 'package:tennis_app/models/tournament.dart';
import 'package:tennis_app/ui/widgets/molecules/matches_card.dart';
import 'package:tennis_app/utils/colors.dart';
import 'package:tennis_app/utils/image_paths.dart';
import 'package:tennis_app/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  late int defaultChoiceIndex;
  final List<String> _choicesList = ['All', 'Live', 'Complete' ,'Schedule'];


  @override
  void initState() {
    super.initState();
    defaultChoiceIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Matches", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),),

                    Icon(CupertinoIcons.search, color: Colors.grey,),
                  ],
                ),
              ),

              const SizedBox(height: 5,),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text("Today's Top Matches", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),),
              ),

              const SizedBox(height: 5,),

              const SizedBox(height: 5,),


          CarouselSlider.builder(

              itemCount: AppStockData.topMatches.length,
              itemBuilder: (context, itemIndex, r) {
                TopMatches topMatch = AppStockData.topMatches[itemIndex];
              return MatchesCard(
                tournament: topMatch.tournament,
                tennisAssociation: topMatch.tournamentCategory,
                round: topMatch.round,
                time: topMatch.time,
                player1: topMatch.player1Name,
                player2: topMatch.player2Name,
                chipLabel: topMatch.playStatus,
                chipIcon: Icons.check_circle,
                chipIconColor:topMatch.playStatus.toLowerCase() == "live"? null :Colors.green,
              );
              },
            options: CarouselOptions(
              height: 200,
              viewportFraction: 0.9,
              autoPlay: true,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
              const SizedBox(height: 15,),

              Center(
                child: AnimatedSmoothIndicator(
                    activeIndex: _current,
                    count: 4,
                  effect: const WormEffect(
                    activeDotColor: AppColors.colorPrimaryDark,
                    dotHeight: 8
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all( 8.0,),
                  child: Wrap(
                    children: List.generate(_choicesList.length, (index) {
                      return ChoiceChip(
                        label: Text(
                          _choicesList[index],
                          style: defaultChoiceIndex == index?
                          const TextStyle( fontWeight: FontWeight.bold, color: Colors.white):
                          const TextStyle( color: Colors.black),
                        ),
                        selected: defaultChoiceIndex == index,
                        selectedColor: AppColors.appLightGreen,
                        onSelected: (value) {
                          setState(() {
                            defaultChoiceIndex = value ? index : defaultChoiceIndex;
                          });
                        },
                        backgroundColor: Colors.grey[200],
                        //elevation: 1,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                      );
                    }),

                  ),
                ),
              ),

              const SizedBox(height: 5,),

              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: AppStockData.tournaments.length,
                  itemBuilder: (BuildContext context, int index){
                    Tournament tournament = AppStockData.tournaments[index];
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Flag.fromString(tournament.countryCode, height: 46, width: 46)),
                        title: Text(tournament.tournamentTitle),
                        subtitle: Text(tournament.tournamentCategory),
                        trailing: SizedBox(
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(tournament.matchesPlayed, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                                Text(tournament.totalMatches),

                              ],
                            )
                        ),
                        onTap: ()=>Navigator.pushNamed(context, Routes.tournamentDetailsPage),
                      ),
                    );
                  }
              ),

              const SizedBox(height: 15,),






            ],
          ),
        ),
      ),
    );
  }
}
