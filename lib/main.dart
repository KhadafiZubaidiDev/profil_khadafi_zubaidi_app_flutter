import 'dart:ui';
import 'package:custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profil_khadafi_zubaidi_app/presentation/pages/main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Khadafi's Profile";

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: title),
      theme: ThemeData(
        fontFamily: "Ubuntu",
        primaryColor: Colors.white,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AssetImage image1,image2;

  @override
  void initState() {
    super.initState();
    image1 = const AssetImage("assets/homeBackground.jpg");
    image2 = const AssetImage("assets/myPhoto.jpeg");
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1, context);
    precacheImage(image2, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: image1,
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                left: 10,
                right: 10, //set left right to 0 for 100% width
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                          color: Colors.brown.shade200.withOpacity(0.5)
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: image2,
                            radius: 30,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Welcome to Khadafi's Profile Application.\nIn this application, you will get information about my profile. Hopefully the information contained in it can be useful for you.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "UbuntuRegular",
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          CustomButton(
                            iconData: Icons.home_filled,
                            buttonText: "Go to Homepage",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyApp2()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
