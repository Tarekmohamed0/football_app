import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:football_app/src/features/home/presentation/pages/home.dart';
import 'package:football_app/src/core/constants/colors.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  int currentTab = 0;

  final icons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.calendar,
    FontAwesomeIcons.chartLine,
    FontAwesomeIcons.user
  ];

  final titles = [
    'Home',
    'Matches',
    'Stats',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        bottomNavigationBar: Container(
          height: 80,
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.015),
                spreadRadius: 5,
                blurRadius: 8,
              ),
            ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              4,
              (index) => MyNameBarItems(
                titel: titles[index],
                isaactive: currentTab == index,
                onTab: () {
                  setState(() {
                    currentTab = index;
                  });
                },
                icon: icons[index],
              ),
            ),
          ),
        ),
        body: screens[currentTab]);
  }
}

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: AppColor.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.grip,
                  color: Colors.black,
                ),
                color: AppColor.white,
              ),
              const SizedBox(
                width: 80,
              ),
              const Text(
                'Soccer Nerds',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.bell),
                color: AppColor.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyNameBarItems extends StatefulWidget {
  const MyNameBarItems(
      {super.key,
      required this.titel,
      required this.isaactive,
      required this.onTab,
      required this.icon});
  final String titel;
  final bool isaactive;
  final Function() onTab;
  final IconData icon;
  @override
  State<MyNameBarItems> createState() => _MyNameBarItemsState();
}

class _MyNameBarItemsState extends State<MyNameBarItems> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTab();
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:
                widget.isaactive ? Colors.yellow.shade800 : Colors.transparent,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              FaIcon(
                widget.icon,
                color: widget.isaactive ? AppColor.white : Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.titel,
                style: TextStyle(
                    color: widget.isaactive ? AppColor.white : Colors.grey,
                    fontSize: 12),
              )
            ],
          )),
    );
  }
}
