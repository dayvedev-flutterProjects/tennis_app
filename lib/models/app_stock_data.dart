
import 'package:tennis_app/models/match_score.dart';
import 'package:tennis_app/models/top_matches.dart';
import 'package:tennis_app/models/tournament.dart';
import 'package:tennis_app/utils/image_paths.dart';

class AppStockData{

  static const List<String> tournamentEvents = [
    'All Events',
    'Men\'s Singles', 'Women\'s Singles', 'Men\'s Doubles' ,'Women\'s Doubles','Mixed Doubles',
    'Junior Boys\' Singles', 'Junior Girls\' Singles', 'Junior Boys\' Doubles' ,'Junior Boys\' Doubles',
  ];

  static const List<String> tournamentRounds = [
    'R1', 'R2','R3', 'R4','QF','SF', 'F',
  ];

  static final List<TopMatches> topMatches = [
    TopMatches(
        tournament: "Australian Open",
        tournamentCategory: "ATP",
        round: "Final",
        time: "20:30",
        playStatus: "Live",
        player1Name: "R. Nadal",
        player2Name: "D. Medvedev"),

    TopMatches(
        tournament: "Australian Open",
        tournamentCategory: "WTA",
        round: "Final",
        time: "18:00",
        playStatus: "Live",
        player1Name: "A. Barty",
        player2Name: "D. Collins"),

    TopMatches(
        tournament: "Australian Open",
        tournamentCategory: "WTA",
        round: "Finals",
        time: "17:30",
        playStatus: "Complete",
        player1Name: "B. Krejcikova/K. Siniakova",
        player2Name: "A. Danilina /B.H. Maia"),

    TopMatches(
        tournament: "Australian Open",
        tournamentCategory: "ATP",
        round: "1st Round",
        time: "15:30",
        playStatus: "Complete",
        player1Name: "T. Kokkinakis/N. Kyrgios",
        player2Name: "M. Ebden/M. Purcell"),

  ];

  static final List<MatchScore> matchScores = [
    // MatchScore(
    //     round: "Final",
    //     arena: "Rod Laver Arena",
    //     playStatus: "Live",
    //     player1Name: "R. Nadal",
    //     player2Name: "D. Medvedev",
    //     player1Scores: "2  6  6  6",
    //     player2Scores: "6  7  4  4",
    //     player1LiveGameScore: "7",
    //     player2LiveGameScore: "5",
    //     player1Avatar: ImagePaths.player2s[0],
    //     player2Avatar: ImagePaths.player2s[1],
    //     player1DidWin: true ),

    MatchScore(
        round: "Final",
        arena: "Rod Laver Arena",
        playStatus: "Complete",
        player1Name: "A. Barty",
        player2Name: "D. Collins",
        player1Scores: "6  7",
        player2Scores: "3  6",
        player1Avatar: ImagePaths.player2s[0],
        player2Avatar: ImagePaths.player2s[0],
        player1DidWin: true ),

    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Live",
        player1Name: "R. Federer",
        player2Name: "S. Tsitsipas",
        player1Scores: "3  4",
        player2Scores: "6  6",
        player1LiveGameScore: "3",
        player2LiveGameScore: "3",
        player1Avatar: ImagePaths.player2s[0],
        player2Avatar: ImagePaths.player2s[0],
        player1DidWin: null ),
    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Scheduled",
        player1Name: "S. Williams",
        player2Name: "N. Osaka",
        player1Avatar: ImagePaths.player2s[0],
        player2Avatar: ImagePaths.player2s[0],
        player1DidWin: null ),

  ];

  static final List<Tournament> tournaments = [
    Tournament(
        countryCode: "AU",
        tournamentTitle: "Australian Open",
        tournamentCategory: "ATP",
        matchesPlayed: "1",
        totalMatches: "17"),
    Tournament(
        countryCode: "AU",
        tournamentTitle: "Australian Open",
        tournamentCategory: "WTA",
        matchesPlayed: "",
        totalMatches: "17"),
    Tournament(
        countryCode: "GB",
        tournamentTitle: "Wimbledon",
        tournamentCategory: "ATP",
        matchesPlayed: "4",
        totalMatches: "17"),
    Tournament(
        countryCode: "GB",
        tournamentTitle: "Wimbledon",
        tournamentCategory: "WTA",
        matchesPlayed: "4",
        totalMatches: "17"),
    Tournament(
        countryCode: "AE",
        tournamentTitle: "Dubai Tennis Championships",
        tournamentCategory: "WTA",
        matchesPlayed: "4",
        totalMatches: "17"),
    Tournament(
        countryCode: "AE",
        tournamentTitle: "Dubai Tennis Championships",
        tournamentCategory: "ATP",
        matchesPlayed: "4",
        totalMatches: "17"),
  ];

}