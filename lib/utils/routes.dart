
import 'package:flutter/material.dart';
import 'package:tennis_app/ui/pages/home_nav.dart';
import 'package:tennis_app/ui/pages/intro_page.dart';
import 'package:tennis_app/ui/pages/match_details_page.dart';
import 'package:tennis_app/ui/pages/nav/home_page.dart';
import 'package:tennis_app/ui/pages/tournament_details_page.dart';

class Routes {

  static const introPage = '/intro_page';
  static const homePage = '/home';
  static const tournamentDetailsPage = '/tournamentDetailsPage';
  static const matchDetailsPage = '/matchDetailsPage';


  static Map<String, Widget Function(BuildContext)> registerRoutes (){
    return {
      homePage: (context) => const HomeNavPage(),
      introPage: (BuildContext context) => const IntroPage(),
      tournamentDetailsPage: (context) => const TournamentDetailsPage(),
      matchDetailsPage: (context) => const MatchDetailsPage(),


    };
  }

}
