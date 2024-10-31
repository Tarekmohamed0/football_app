// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:football_app/src/features/home/data/models/live_match.dart';
import 'package:football_app/src/features/home/presentation/pages/home.dart';

class Matchdetailscreen extends StatelessWidget {
  Matchdetailscreen({
    super.key,
    required this.liveMatch,
  });
  final LiveMatch liveMatch;

  List<Map<String, dynamic>> tabs = [
    {
      'title': 'Match',
      'widget': Home(),
    },
    {
      'title': 'Stats',
      'widget': Home(),
    },
    {
      'title': 'Lineups',
      'widget': Home(),
    },
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text('Champions League'),
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      // height: 200,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: liveMatch.backgroundImage,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Text(
                          liveMatch.stedium,
                          style: TextStyle(
                              color: liveMatch.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1),
                        ),
                        Text(
                          'week 13',
                          style: TextStyle(
                              color: liveMatch.textColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    liveMatch.homeLogo,
                                    height: 100,
                                  ),
                                  Text(liveMatch.homeTitle.toUpperCase(),
                                      style: TextStyle(
                                          color: liveMatch.textColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -1)),
                                  Text('Home',
                                      style: TextStyle(
                                          color: liveMatch.textColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -1)),
                                ],
                              ),

                              // for time and score

                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  // color: liveMatch.textColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      '${liveMatch.time}\'',
                                      style: TextStyle(
                                          color: liveMatch.textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -1),
                                    ),
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: '${liveMatch.homeGoal}',
                                          style: TextStyle(
                                              color: liveMatch.onThewinner
                                                  ? Colors.green
                                                  : liveMatch.textColor,
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: -1),
                                        ),
                                        TextSpan(
                                          text: ' : ',
                                          style: TextStyle(
                                              color: liveMatch.textColor,
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: -1),
                                        ),
                                        TextSpan(
                                          text: '${liveMatch.awayGoal}',
                                          style: TextStyle(
                                              color: liveMatch.onThewinner
                                                  ? liveMatch.textColor
                                                  : liveMatch.textColor,
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: -1),
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                              // for away team

                              Column(
                                children: [
                                  Image.asset(
                                    liveMatch.awayLogo,
                                    height: 100,
                                  ),
                                  Text(liveMatch.awayTitle.toUpperCase(),
                                      style: TextStyle(
                                          color: liveMatch.textColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -1)),
                                  Text('Away',
                                      style: TextStyle(
                                          color: liveMatch.textColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -1)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Stack(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    color: Colors.yellow.shade900,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(child: Text('ST')),
                              ),
                            ),
                            Positioned(
                              left: 160,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(child: Text('HT')),
                              ),
                            ),
                            Positioned(
                              right: -1,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(child: Text('ST')),
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LiveMatchStates(
                      homeSates: liveMatch.shotOnTarget,
                      awayStats: liveMatch.shotOnTarget * 2,
                      homeValue: liveMatch.shotOnTarget.toDouble() / 10,
                      awayValue: liveMatch.shotOnTarget.toDouble() * 2 / 10,
                      isHomeWinner: false,
                      title: 'Shots on target',
                    ),
                    LiveMatchStates(
                      homeSates: liveMatch.redCard - 1,
                      awayStats: liveMatch.redCard,
                      homeValue: liveMatch.redCard.toDouble() / 10,
                      awayValue: liveMatch.redCard.toDouble() * 2 / 10,
                      isHomeWinner: false,
                      title: 'Red Cards',
                    ),
                    LiveMatchStates(
                      homeSates: liveMatch.corner,
                      awayStats: liveMatch.corner - 1,
                      homeValue: liveMatch.redCard.toDouble() / 5,
                      awayValue: liveMatch.redCard.toDouble() / 5,
                      isHomeWinner: true,
                      title: 'Corner kicks',
                    ),
                    LiveMatchStates(
                      homeSates: liveMatch.possesion,
                      awayStats: liveMatch.possesion,
                      homeValue: liveMatch.possesion.toDouble() / 5,
                      awayValue: liveMatch.possesion.toDouble() / 5,
                      isHomeWinner: true,
                      title: 'possesion',
                    ),
                    LiveMatchStates(
                      homeSates: liveMatch.yellowCard,
                      awayStats: liveMatch.yellowCard - 1,
                      homeValue: liveMatch.yellowCard.toDouble() / 5,
                      awayValue: liveMatch.yellowCard.toDouble() / 5,
                      isHomeWinner: true,
                      title: 'yellow Card',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LiveMatchStates extends StatelessWidget {
  const LiveMatchStates(
      {super.key,
      required this.homeSates,
      required this.awayStats,
      required this.homeValue,
      required this.awayValue,
      required this.isHomeWinner,
      required this.title});
  final int homeSates, awayStats;
  final double homeValue, awayValue;
  final String title;
  final bool isHomeWinner;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${homeSates.toString()}%',
                  style: TextStyle(
                      color: isHomeWinner ? Colors.green : Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1)),
              Text(title,
                  style: TextStyle(
                      color: isHomeWinner ? Colors.green : Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1)),
              Text('${awayStats.toString()}%',
                  style: TextStyle(
                      color: isHomeWinner ? Colors.green : Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: RotatedBox(
                quarterTurns: 2,
                child: LinearProgressIndicator(
                  value: homeValue,
                  minHeight: 10,
                  // backgroundColor: Colors.yellow.shade900,
                  valueColor: AlwaysStoppedAnimation(
                      isHomeWinner ? Colors.yellow.shade900 : Colors.black),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: LinearProgressIndicator(
                value: awayValue,
                minHeight: 10,
                // backgroundColor: Colors.yellow.shade900,
                valueColor: AlwaysStoppedAnimation(
                    !isHomeWinner ? Colors.yellow.shade900 : Colors.black),
              ))
            ],
          )
        ],
      ),
    );
  }
}
