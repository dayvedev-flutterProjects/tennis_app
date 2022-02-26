
class MatchScore{

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

  MatchScore({
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
    required this.player1DidWin
  });



}