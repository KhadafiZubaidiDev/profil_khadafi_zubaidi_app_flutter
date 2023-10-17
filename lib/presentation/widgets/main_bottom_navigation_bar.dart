import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pages/main2.dart';
import '../pages/main3.dart';
import '../pages/main4.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black),
        ],
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyApp2()),
              );
            },
            child: const FaIcon(FontAwesomeIcons.houseChimney),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyApp3()),
              );
            },
            child: const FaIcon(FontAwesomeIcons.briefcase),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyApp4()),
              );
            },
            child: const FaIcon(FontAwesomeIcons.graduationCap),
          ),
          GestureDetector(
            onTap: null,
            child: const FaIcon(FontAwesomeIcons.newspaper),
          ),
          GestureDetector(
            onTap: null,
            child: const FaIcon(FontAwesomeIcons.heart),
          ),
        ],
      ),
    ),
  );
}
