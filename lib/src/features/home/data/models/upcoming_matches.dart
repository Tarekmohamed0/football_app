class UpcomingMatch {
  final String awayLogo;
  final String awayTitle;
  final String homeLogo;
  final String homeTitle;
  final String date;
  final String time;
  final bool isFavorite;

  UpcomingMatch({
    required this.awayLogo,
    required this.awayTitle,
    required this.homeLogo,
    required this.homeTitle,
    required this.date,
    required this.time,
    required this.isFavorite,
  });
}

List<UpcomingMatch> upcomingMatches = [
  UpcomingMatch(
    awayLogo: "assets/images/barcelona.png",
    awayTitle: "Barcelona",
    homeLogo: "assets/images/liverpool.png",
    homeTitle: "Liverpool FC",
    date: "30 Dec",
    time: "06 : 30",
    isFavorite: true,
  ),
  UpcomingMatch(
    awayLogo: "assets/images/barcelona.png",
    awayTitle: "Barcelona",
    homeLogo: "assets/images/liverpool.png",
    homeTitle: "Liverpool FC",
    date: "30 Dec",
    time: "06 : 30",
    isFavorite: false,
  ),
  UpcomingMatch(
    awayLogo: "assets/images/barcelona.png",
    awayTitle: "Barcelona",
    homeLogo: "assets/images/liverpool.png",
    homeTitle: "Liverpool FC",
    date: "30 Dec",
    time: "06 : 30",
    isFavorite: false,
  ),
  UpcomingMatch(
    awayLogo: "assets/images/barcelona.png",
    awayTitle: "Barcelona",
    homeLogo: "assets/images/liverpool.png",
    homeTitle: "Liverpool FC",
    date: "30 Dec",
    time: "06 : 30",
    isFavorite: false,
  ),
];
