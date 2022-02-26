
import 'package:flutter/material.dart';
import 'package:tennis_app/ui/pages/home_nav.dart';
import 'package:tennis_app/ui/pages/intro_page.dart';
import 'package:tennis_app/ui/pages/match_details_page.dart';
import 'package:tennis_app/ui/pages/nav/home_page.dart';
import 'package:tennis_app/ui/pages/tournament_details_page.dart';

class Routes {

  static const introPage = '/intro_page';

  static const homePage = '/home';
  static const apiTestPage = '/apiTestPage';
  static const tournamentDetailsPage = '/tournamentDetailsPage';

  static const matchDetailsPage = '/matchDetailsPage';

  static const selectOperationsView = '/selectOperationsView';
  static const pickOperandsView = '/pickOperandsView';
  static const showResultsView = '/showResultsView';


  static const dashboardPage = '/dashboard';

  static const featuredPropertyDetailsPage = '/featuredPropertyDetailsPage';
  static const viewImagesPage = '/viewImagesPage';
  static const paymentsPage = '/paymentsPage';
  static const  profilePage = '/profilePage';
  static const  editProfilePage = '/editProfilePage';
  static const  propertyApplicationPage = '/propertyApplicationPage';
  static const  rentApplicationsPage = '/rentApplicationsPage';
  static const  addGuarantorPage = '/addGuarantorPage';


  static const updatePasswordPage = '/updatePasswordPage';
  static const resetPasswordPage = '/resetPassword';
  static const updateEmailPage = '/updateEmailPage';



  static const vehiclesPage = '/vehicles';
  // static const paymentsPage = '/makePayment';
  static const rssFeedsPage = '/rssFeeds';
  static const requestTowPage = '/requestTow';
  static const serviceTrackingPage = '/serviceTracking';
  static const incidentReportPage = '/incidentReporting';

  static const makePaymentPage = '/serviceTracking';
  static const momoPaymentPage = '/serviceTracking';


  static Map<String, Widget Function(BuildContext)> registerRoutes (){
    return {
      homePage: (context) => const HomeNavPage(),
      introPage: (BuildContext context) => const IntroPage(),
      //loginPage: (context) => LoginPage(),
       tournamentDetailsPage: (context) => const TournamentDetailsPage(),
      matchDetailsPage: (context) => const MatchDetailsPage(),
      // pickOperandsView: (context) => const PickOperandsView(),
      // showResultsView: (context) => ShowResultsView(),

    };
  }

}
