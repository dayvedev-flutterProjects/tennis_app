
import 'package:tennis_app/models/match_score.dart';
import 'package:tennis_app/models/tournament.dart';

class AppStockData{

  static const List<String> tournamentEvents = [
    'All Events',
    'Men\'s Singles', 'Women\'s Singles', 'Men\'s Doubles' ,'Women\'s Doubles','Mixed Doubles',
    'Junior Boys\' Singles', 'Junior Girls\' Singles', 'Junior Boys\' Doubles' ,'Junior Boys\' Doubles',
  ];

  static const List<String> tournamentRounds = [
    'R1', 'R2','R3', 'R4','QF','SF', 'F',
  ];

  static final List<MatchScore> matchScores = [
    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Complete",
        player1Name: "R. Nadal",
        player2Name: "D. Medvedev",
        player1Scores: "6  3  6  4",
        player2Scores: "3  6  3  4",
        player1Avatar: "player1Avatar",
        player2Avatar: "player2Avatar",
        player1DidWin: true ),
    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Complete",
        player1Name: "R. Nadal",
        player2Name: "D. Medvedev",
        player1Scores: "6  3  6  4",
        player2Scores: "3  6  3  4",
        player1Avatar: "player1Avatar",
        player2Avatar: "player2Avatar",
        player1DidWin: false ),
    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Live",
        player1Name: "R. Nadal",
        player2Name: "D. Medvedev",
        player1Scores: "6  3",
        player2Scores: "3  6 ",
        player1LiveGameScore: "3",
        player2LiveGameScore: "3",
        player1Avatar: "player1Avatar",
        player2Avatar: "player2Avatar",
        player1DidWin: null ),
    MatchScore(
        round: "1st Round",
        arena: "Court 7",
        playStatus: "Scheduled",
        player1Name: "R. Nadal",
        player2Name: "D. Medvedev",
        player1Avatar: "player1Avatar",
        player2Avatar: "player2Avatar",
        player1DidWin: null ),

  ];

  static final List<Tournament> tournaments = [
    Tournament(
        countryCode: "AU",
        tournamentTitle: "Australian Open",
        tournamentCategory: "ATP",
        matchesPlayed: "1",
        totalMatches: "17"),
  ];

}