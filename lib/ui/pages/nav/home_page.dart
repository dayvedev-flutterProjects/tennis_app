import 'package:carousel_slider/carousel_slider.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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

              itemCount: 3,
              itemBuilder: (context, itemIndex, r) =>
              const MatchesCard(
                tournament: "Australian Open",
                tennisAssociation: "ATP",
                round: "1st Round",
                time: "19:00",
                player1: "R. Nadal",
                player2: "D. Medvedev",
              ),
            options: CarouselOptions(
              height: 200,
              viewportFraction: 0.9,
              autoPlay: true,
               enableInfiniteScroll: false,
               //aspectRatio: 2.1,
               //enlargeCenterPage: true,
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
                    count: 3,
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
                        //labelPadding: EdgeInsets.all(12.0),
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

              Card(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      //child: Flag.fromCode(FlagsCode.AU, height: 46, width: 46)),
                      child: Flag.fromString("AU", height: 46, width: 46)),
                  title: Text("Australia Open"),
                  subtitle: Text("ATP"),
                  trailing: SizedBox(
                    width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                          Text("17"),
                        ],
                      )
                  ),
                ),
              ),
              const SizedBox(height: 15,),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Flag.fromCode(FlagsCode.AU, height: 46, width: 46)),
                  title: Text("Australia Open"),
                  subtitle: Text("ATP"),
                  trailing: SizedBox(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                          Text("17"),
                        ],
                      )
                  ),
                  onTap: ()=>Navigator.pushNamed(context, Routes.tournamentDetailsPage),
                ),
              ),

              const SizedBox(height: 15,),

              Container(
                //height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 12.0),
                padding: const EdgeInsets.all(8.0),
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
                             text: '1st Round  \u{FF65} ',
                             style: const TextStyle(fontSize: 12, color: Colors.black),
                             children: [

                               TextSpan(
                                 text: " Court 7 ",
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
                               const WidgetSpan(
                                 child: Padding(
                                   padding: EdgeInsets.only(bottom: 3.0),
                                   child: Icon(Icons.circle, size: 8, color: Colors.black,),
                                 ),
                               ),

                               TextSpan(
                                 text: " Live ",
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

                    ListTile(
                      dense:true,

                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                      leading: CircleAvatar(
                          child: Icon(Icons.person_outline),
                      ),
                      title: Text("Australia Open"),
                      // subtitle: Text("ATP"),
                      trailing: SizedBox(
                          width: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                              Text("17"),
                            ],
                          )
                      ),
                    ),

                    Divider(),

                    ListTile(
                      dense:true,

                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                      leading: CircleAvatar(
                        child: Icon(Icons.person_outline),
                      ),
                      title: Text("Australia Open"),
                      // subtitle: Text("ATP"),
                      trailing: SizedBox(
                          width: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("1", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.red),),
                              Text("17"),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
