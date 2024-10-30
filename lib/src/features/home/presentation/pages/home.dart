import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:football_app/src/features/home/data/models/live_match.dart';
import 'package:football_app/src/features/home/data/models/upcoming_matches.dart';

import '../../../main/presentation/pages/main_screen.dart';
import '../../../matchdetailscreen/presentation/pages/match_detail_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // custom app bar
            const customAppBar(),
            const SizedBox(
              height: 20,
            ),
            // custom list view for matches
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Live Match',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pl.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Premier League'),
                    const SizedBox(
                      width: 10,
                    ),
                    const FaIcon(FontAwesomeIcons.caretDown)
                  ],
                )
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            // custom list view for matches
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final live = liveMatches[index];
                  return GestureDetector(
                    onTap: () {
                      // GoRouter.of(context).go('/home');
                    },
                    child: liveMatchData(live: live),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // for upcoming matches
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Text(
                    'Up-coming Matches',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  const Spacer(),
                  TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.yellow.shade700,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'see all',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ListView.builder(
                  itemCount: upcomingMatches.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final upcoming = upcomingMatches[index];
                    return GestureDetector(
                        onTap: () {
                          // GoRouter.of(context).go('/home');
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Matchdetailscreen(
                                liveMatch: liveMatches[index]);
                          }));
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, -5),
                                      color: upcoming.isFavorite
                                          ? Colors.yellow.shade700
                                          : Colors.grey.shade600,
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Text(
                                    upcoming.homeTitle,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Image.asset(
                                        upcoming.homeLogo,
                                        height: 45,
                                        width: 45,
                                      ),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                            fontSize: 11, letterSpacing: -1),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        upcoming.time,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey.shade700,
                                            letterSpacing: -1),
                                      ),
                                      Text(
                                        upcoming.date,
                                        style: TextStyle(
                                            fontSize: 16, letterSpacing: -1),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        upcoming.awayLogo,
                                        height: 45,
                                        width: 45,
                                      ),
                                      Text(
                                        'Away',
                                        style: TextStyle(
                                            fontSize: 11, letterSpacing: -1),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    upcoming.awayTitle,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ));
                  }),
            ))
          ],
        ),
      ),
    );
  }
}

class liveMatchData extends StatelessWidget {
  const liveMatchData({
    super.key,
    required this.live,
  });

  final LiveMatch live;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: live.backgroundImage,
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            live.stedium,
            style: TextStyle(
                color: live.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: -1),
          ),
          Text(
            'week 13',
            style: TextStyle(
                color: live.textColor,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                letterSpacing: -1),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset(
                      live.homeLogo,
                      height: 100,
                    ),
                    Text(live.homeTitle.toUpperCase(),
                        style: TextStyle(
                            color: live.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1)),
                    Text('Home',
                        style: TextStyle(
                            color: live.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1)),
                  ],
                ),

                // for time and score
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '${live.time}\'',
                      style: TextStyle(
                          color: live.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -1),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: '${live.homeGoal}',
                          style: TextStyle(
                              color: live.onThewinner
                                  ? Colors.green
                                  : live.textColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1),
                        ),
                        TextSpan(
                          text: ' : ',
                          style: TextStyle(
                              color: live.textColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1),
                        ),
                        TextSpan(
                          text: '${live.awayGoal}',
                          style: TextStyle(
                              color: live.onThewinner
                                  ? live.textColor
                                  : live.textColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1),
                        ),
                      ]),
                    ),
                  ],
                ),
                // for away team

                Column(
                  children: [
                    Image.asset(
                      live.awayLogo,
                      height: 100,
                    ),
                    Text(live.awayTitle.toUpperCase(),
                        style: TextStyle(
                            color: live.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1)),
                    Text('Away',
                        style: TextStyle(
                            color: live.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
