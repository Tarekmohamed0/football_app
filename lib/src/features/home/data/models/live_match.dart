import 'package:flutter/material.dart';

class LiveMatch {
  final int awayGoal;
  final int homeGoal;
  final int time;
  final String awayLogo;
  final String homeLogo;
  final String awayTitle;
  final String homeTitle;
  final String stedium;
  final int shotOnTarget, possesion, corner, yellowCard, redCard;
  final Color color;
  final Color textColor;
  final DecorationImage backgroundImage;
  bool onThewinner;

  LiveMatch({
    required this.awayGoal,
    required this.homeGoal,
    required this.time,
    required this.awayLogo,
    required this.homeLogo,
    required this.awayTitle,
    required this.homeTitle,
    required this.stedium,
    required this.shotOnTarget,
    required this.possesion,
    required this.corner,
    required this.yellowCard,
    required this.redCard,
    required this.color,
    required this.textColor,
    required this.backgroundImage,
    required this.onThewinner,
  });

  LiveMatch copyWith({
    int? awayGoal,
    int? homeGoal,
    int? time,
    String? awayLogo,
    String? homeLogo,
    String? awayTitle,
    String? homeTitle,
    String? stedium,
    int? shotOnTarget,
    int? possesion,
    int? corner,
    int? yellowCard,
    int? redCard,
    Color? color,
    Color? textColor,
    DecorationImage? backgroundImage,
    bool? onThewinner,
  }) {
    return LiveMatch(
      awayGoal: awayGoal ?? this.awayGoal,
      homeGoal: homeGoal ?? this.homeGoal,
      time: time ?? this.time,
      awayLogo: awayLogo ?? this.awayLogo,
      homeLogo: homeLogo ?? this.homeLogo,
      awayTitle: awayTitle ?? this.awayTitle,
      homeTitle: homeTitle ?? this.homeTitle,
      stedium: stedium ?? this.stedium,
      shotOnTarget: shotOnTarget ?? this.shotOnTarget,
      possesion: possesion ?? this.possesion,
      corner: corner ?? this.corner,
      yellowCard: yellowCard ?? this.yellowCard,
      redCard: redCard ?? this.redCard,
      color: color ?? this.color,
      textColor: textColor ?? this.textColor,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      onThewinner: onThewinner ?? this.onThewinner,
    );
  }
}

List<LiveMatch> liveMatches = [
  // generate data and put any logo or image from internet
  LiveMatch(
    awayGoal: 1,
    homeGoal: 0,
    time: 45,
    awayLogo: 'assets/images/liverpool.png',
    homeLogo: 'assets/images/barcelona.png',
    awayTitle: 'Liverpool',
    homeTitle: 'Barcelona',
    stedium: 'Emirates Stadium',
    shotOnTarget: 6,
    possesion: 52,
    corner: 10,
    yellowCard: 2,
    redCard: 1,
    color: Colors.red,
    textColor: Colors.white,
    backgroundImage: const DecorationImage(
        image: AssetImage('assets/images/cl.png'),
        fit: BoxFit.cover,
        scale: 0.5),
    onThewinner: false,
  ),
  LiveMatch(
    awayGoal: 4,
    homeGoal: 2,
    time: 45,
    awayLogo: 'assets/images/liverpool.png',
    homeLogo: 'assets/images/barcelona.png',
    awayTitle: 'Liverpool',
    homeTitle: 'Barcelona',
    stedium: 'Emirates Stadium',
    shotOnTarget: 5,
    possesion: 40,
    corner: 5,
    yellowCard: 5,
    redCard: 12,
    color: Colors.red,
    textColor: Colors.white,
    backgroundImage: const DecorationImage(
      image: AssetImage('assets/images/pl.png'),
      fit: BoxFit.cover,
    ),
    onThewinner: true,
  ),
  LiveMatch(
    awayGoal: 3,
    homeGoal: 1,
    time: 45,
    awayLogo: 'assets/images/liverpool.png',
    homeLogo: 'assets/images/barcelona.png',
    awayTitle: 'Liverpool',
    homeTitle: 'Barcelona',
    stedium: 'Emirates Stadium',
    shotOnTarget: 15,
    possesion: 30,
    corner: 13,
    yellowCard: 4,
    redCard: 2,
    color: Colors.red,
    textColor: Colors.white,
    backgroundImage: const DecorationImage(
      image: AssetImage('assets/images/cl.png'),
      fit: BoxFit.cover,
    ),
    onThewinner: false,
  ),
  LiveMatch(
    awayGoal: 0,
    homeGoal: 3,
    time: 45,
    awayLogo: 'assets/images/liverpool.png',
    homeLogo: 'assets/images/barcelona.png',
    awayTitle: 'Liverpool',
    homeTitle: 'Barcelona',
    stedium: 'Emirates Stadium',
    shotOnTarget: 4,
    possesion: 20,
    corner: 31,
    yellowCard: 2,
    redCard: 5,
    color: Colors.red,
    textColor: Colors.white,
    backgroundImage: const DecorationImage(
      image: AssetImage('assets/images/cl.png'),
      fit: BoxFit.cover,
    ),
    onThewinner: true,
  ),
  LiveMatch(
    awayGoal: 1,
    homeGoal: 1,
    time: 45,
    awayLogo: 'assets/images/liverpool.png',
    homeLogo: 'assets/images/barcelona.png',
    awayTitle: 'Liverpool',
    homeTitle: 'Barcelona',
    stedium: 'Emirates Stadium',
    shotOnTarget: 3,
    possesion: 10,
    corner: 3,
    yellowCard: 2,
    redCard: 3,
    color: Colors.red,
    textColor: Colors.white,
    backgroundImage: const DecorationImage(
      image: AssetImage('assets/images/cl.png'),
      fit: BoxFit.cover,
    ),
    onThewinner: false,
  ),
];
