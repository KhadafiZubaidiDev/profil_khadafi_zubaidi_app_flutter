import 'package:flutter/material.dart';
import '../widgets/theme_button.dart';
import '../../main.dart';
import '../sections/welcome_section.dart';
import '../widgets/main_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late AssetImage image1;
    image1 = const AssetImage("assets/myPhoto.jpeg");
    precacheImage(image1, context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(MyApp.title, style: TextStyle( fontFamily: 'QuicksandBold', color: Colors.white, fontSize: 24.0,),),
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: CircleAvatar(backgroundImage: image1,),
        ),
        actions: const [
          ThemeButton(),
        ],
      ),
      body: const WelcomeSection(),
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
