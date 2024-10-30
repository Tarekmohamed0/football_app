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
      body: SafeArea(
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    liveMatch.homeLogo,
                                    height: 50,
                                  ),
                                  Text(
                                    liveMatch.homeTitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    liveMatch.homeGoal.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                  Text(
                                    liveMatch.awayGoal.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    liveMatch.awayLogo,
                                    height: 50,
                                  ),
                                  Text(
                                    liveMatch.awayTitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'HT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '45:00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              
            )
          ],
        ),
      ),
    );
  }
}
